import 'dart:typed_data';

import 'package:bnbl/core/remote_files/abstract_remote_file_manager.dart';
import 'package:file_picker/file_picker.dart';

Future<String?> uploadFile(
  PlatformFile? platformFile,
  AbstractRemoteFileManager manager, {
  required String filename,
}) async {
  if (platformFile?.bytes != null) {
    return await manager.uploadByteFile(
      filename: filename,
      bytes: platformFile!.bytes!,
    );
  } else if (platformFile?.readStream != null) {
    return await manager.uploadStreamFile(
      filename: filename,
      data: platformFile!.readStream!.map((event) => Uint8List.fromList(event)),
    );
  } else if (platformFile?.path != null) {
    return await manager.uploadFileFromPath(
      name: filename,
      path: platformFile!.path!,
    );
  }
  return null;
}
