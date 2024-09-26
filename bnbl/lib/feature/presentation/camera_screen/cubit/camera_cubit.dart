// // ignore_for_file: avoid_print

// ignore_for_file: unused_local_variable

import 'dart:io';

import 'package:bnbl/feature/presentation/camera_screen/cubit/camera_state.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

// @lazySingleton
@injectable
class CameraCubit extends Cubit<CameraState> {
  CameraCubit() : super(const CameraState.initial());
  CameraController? _controller;
  List<CameraDescription>? cameras;
  dynamic imageFile;

  bool get isImageFileValid => imageFile != null;

  Future<void> initializeCamera() async {
    emit(const CameraState.cameraLoading());
    try {
      cameras = await availableCameras();
      if (cameras!.isNotEmpty) {
        _controller = CameraController(cameras![0], ResolutionPreset.high);
        await _controller!.initialize();
        emit(CameraState.cameraReady(_controller!));
      } else {
        emit(const CameraState.cameraError('No cameras found'));
      }
    } catch (e) {
      emit(CameraState.cameraError(e.toString()));
    }
  }

  Future<void> takePicture() async {
    if (_controller != null && _controller!.value.isInitialized) {
      try {
        imageFile = null;
        final XFile picture = await _controller!.takePicture();
        imageFile = await _savePhotoToFile(picture);
        emit(CameraState.pictureTaken(imageFile));
        debugPrint("################${imageFile!.path}");

        // close();
      } catch (e) {
        emit(CameraState.cameraError(e.toString()));
      }
    }
  }

  Future<File> _savePhotoToFile(XFile image) async {
    final directory = await getApplicationDocumentsDirectory();
    final imagePath = path.join(directory.path, '${DateTime.now()}.png');
    // Copy the captured photo to a new location in the file system
    File file = File(image.path);
    return file.copy(imagePath);
  }

  void switchCamera() async {
    if (cameras != null && cameras!.length > 1) {
      final newIndex =
          (cameras!.indexOf(_controller!.description) + 1) % cameras!.length;
      _controller = CameraController(cameras![newIndex], ResolutionPreset.high);
      await _controller!.initialize();
      emit(CameraState.cameraReady(_controller!));
    }
  }

  @override
  Future<void> close() {
    _controller!.dispose();
    return super.close();
  }
}
