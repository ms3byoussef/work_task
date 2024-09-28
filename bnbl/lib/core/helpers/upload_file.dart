import 'dart:io';
import 'dart:typed_data';

import 'package:bnbl/core/remote_files/abstract_remote_file_manager.dart';

Future<File?> uploadFile(
  dynamic file,
  AbstractRemoteFileManager manager, {
  required String filename,
}) async {
  if (file?.bytes != null) {
    return await manager.uploadByteFile(
      filename: filename,
      bytes: file!.bytes!,
    );
  } else if (file?.readStream != null) {
    return await manager.uploadStreamFile(
      filename: filename,
      data: file!.readStream!.map((event) => Uint8List.fromList(event)),
    );
  } else if (file?.path != null) {
    return await manager.uploadFileFromPath(
      name: filename,
      path: file!.path!,
    );
  }
  return null;
}
