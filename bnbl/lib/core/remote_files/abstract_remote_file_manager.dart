import 'package:flutter/foundation.dart';

abstract class AbstractRemoteFileManager {
  ///[bucket] is something like folder
  ///[filename] is remote name for the uploaded file
  ///[bytes] file that you want to upload
  Future<dynamic> uploadByteFile({
    required String filename,
    required Uint8List bytes,
    void Function(int)? onProgress,
  });

  ///[bucket] is something like folder
  ///[filename] is remote name for the uploaded file
  ///[data] file that you want to upload
  Future<dynamic> uploadStreamFile({
    required String filename,
    required Stream<Uint8List> data,
    void Function(int)? onProgress,
  });

  ///[bucket] is something like folder
  ///[name] is remote name for the uploaded file
  ///[path] path to your file just small note you won't be able to get file path if you're using web
  Future<dynamic> uploadFileFromPath({
    required String name,
    required String path,
  });

  ///[bucket] is something like folder
  ///[filename] is remote name for the uploaded file
  ///[expires] default is 7 days
  String getFileUrl({required String filename, int? expires});

  ///[bucket] is something like folder
  ///[filename] is remote name for the uploaded file
  ///[expires] default is 7 days
  String getFileRelativeUrl({required String bucket, required String filename});

  ///[bucket] is something like folder
  ///[filename] is remote name for the uploaded file
  Future<Stream<List<int>>> getFileAsStream(
      {required String bucket, required String filename});

  ///[bucket] is something like folder
  ///[filename] is remote name for the uploaded file
  ///[pathToSaveThemFile] path that you want to save the file inside it
  // Future<void> downloadFileAndSaveItToPath(
  //     {required String bucket,
  //     required String name,
  //     required String pathToSaveThemFile});

  Future<bool> isBucketExist({required String bucket});

  Future<void> createBucket({required String bucket, String? region});

  Future<String> downloadFile(
      {required String bucket, required String filename, required String ext});

  Future<void> downloadFileFromUrl(
      {required String path,
      required String fileName,
      required String format,
      bool share = false,
      String? baseUrl});
}
