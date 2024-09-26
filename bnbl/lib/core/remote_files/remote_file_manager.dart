// ignore_for_file: override_on_non_overriding_member

import 'dart:io';
import 'dart:typed_data';

import 'package:bnbl/core/remote_files/abstract_remote_file_manager.dart';
import 'package:bnbl/core/remote_files/mime_type.dart';
import 'package:dio/dio.dart';
import 'package:document_file_save_plus/document_file_save_plus.dart';
import 'package:file_saver/file_saver.dart';
import 'package:flutter/foundation.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class DioClientFileManager extends AbstractRemoteFileManager {
  final Dio dio;

  DioClientFileManager(this.dio);

  @override
  Future<void> createBucket({required String bucket, String? region}) async {}

  @override
  Future<String> downloadFile(
      {required String bucket,
      required String filename,
      required String ext}) async {
    final response = await dio.get<List<int>>(
      '/files/$filename',
      options: Options(
        responseType: ResponseType.bytes,
        extra: {"disableRefreshToken": true},
      ),
    );
    // escaping the file name is just for ios platform refuses downloading file with name has some chars
    var escapedFileName = filename._escapedForDownload;

    if (isMobile()) {
      return _saveToMobileDocumentsDirectory(
          "$escapedFileName.$ext", response.data!, ext);
    }
    return await FileSaver.instance.saveFile(
      "$escapedFileName.$ext",
      Uint8List.fromList(response.data!),
      ext,
    );
  }

  @override
  Future<void> downloadFileAndSaveItToPath(
      {required String bucket,
      required String name,
      required String pathToSaveThemFile}) async {
    final response = await dio.get<List<int>>('/files/$name',
        options: Options(
            responseType: ResponseType.bytes,
            extra: {"disableRefreshToken": true}));
    final ext = pathToSaveThemFile.split(".").last;

    if (isMobile()) {
      await _saveToMobileDocumentsDirectory("$name.$ext", response.data!, ext);
    } else {
      await FileSaver.instance.saveFile(
        "$name.$ext",
        Uint8List.fromList(response.data!),
        pathToSaveThemFile.split(".").last,
      );
    }
  }

  @override
  Future<Stream<List<int>>> getFileAsStream(
      {required String bucket, required String filename}) async {
    final response = await dio.get<ResponseBody>(
      '/files/$filename',
      options: Options(
          responseType: ResponseType.stream,
          extra: {"disableRefreshToken": true}),
    );

    return response.data!.stream;
  }

  @override
  String getFileRelativeUrl(
      {required String bucket, required String filename}) {
    return '/files/$filename';
  }

  @override
  Future<bool> isBucketExist({required String bucket}) {
    return Future.value(true);
  }

  @override
  Future<File?> uploadByteFile({
    required String filename,
    required Uint8List bytes,
    void Function(int p1)? onProgress,
  }) async {
    final formData = FormData.fromMap({
      'file': MultipartFile.fromBytes(bytes, filename: filename),
    });
    final response =
        await dio.post<Map<String, dynamic>>('/files/upload', data: formData);
    return response.data?['file'];
  }

  @override
  Future<File> uploadFileFromPath({
    required String name,
    required String path,
  }) async {
    final fileData = await MultipartFile.fromFile(path, filename: name);
    final formData = FormData.fromMap({
      'file': fileData,
    });
    final response =
        await dio.post<Map<String, dynamic>>('/files/upload', data: formData);
    return response.data?['file'];
  }

  @override
  Future<File> uploadStreamFile({
    required String filename,
    required Stream<Uint8List> data,
    void Function(int p1)? onProgress,
  }) async {
    final result = BytesBuilder();
    await for (final chunk in data) {
      result.add(chunk);
    }
    final formData = FormData.fromMap({
      'files': MultipartFile.fromBytes(result.takeBytes(), filename: filename),
    });
    final response =
        await dio.post<Map<String, dynamic>>('/files/upload', data: formData);
    return response.data?['file'];
  }

  @override
  Future<void> downloadFileFromUrl(
      {required String path,
      required String fileName,
      required String format,
      bool share = false,
      String? baseUrl}) async {
    final response = await dio.fetch<List<int>>(Options(
            responseType: ResponseType.bytes,
            extra: {"disableRefreshToken": true})
        .compose(dio.options, path)
        .copyWith(baseUrl: baseUrl ?? dio.options.baseUrl));
    // escaping the file name is just for ios platform refuses downloading file with name has some chars
    var escapedFileName = fileName._escapedForDownload;

    if (isMobile()) {
      share
          ? await _shareFile("$escapedFileName.$format", response.data!)
          : await _saveToMobileDocumentsDirectory(
              "$escapedFileName.$format", response.data!, format);
    } else {
      await FileSaver.instance.saveFile("$escapedFileName.$format",
          Uint8List.fromList(response.data!), format);
    }
  }

  bool isMobile() => !kIsWeb;

  Future<String> _saveToMobileDocumentsDirectory(
      String fileName, List<int> bytes, String extension) async {
    await DocumentFileSavePlus().saveFile(Uint8List.fromList(bytes), fileName,
        mimeFromExtension(extension) ?? '');
    return fileName;
  }

  Future<String> _shareFile(String fileName, List<int> bytes) async {
    final directory = await getTemporaryDirectory();
    final file = File('${directory.path}/$fileName');
    await file.writeAsBytes(bytes);
    // ignore: deprecated_member_use
    Share.shareXFiles([]);
    return fileName;
  }

  @override
  String getFileUrl({required String filename, int? expires}) {
    return '${dio.options.baseUrl}/files/$filename';
  }
}

extension EscappingString on String {
  /// escaping the file name is just for ios platform refuses downloading file with name has some chars
  String get _escapedForDownload {
    var escapedFileName = this;
    escapedFileName = escapedFileName.replaceAll("/", '_');
    escapedFileName = escapedFileName.replaceAll("\\", '_');
    escapedFileName = escapedFileName.replaceAll("-", '_');
    return escapedFileName;
  }
}
