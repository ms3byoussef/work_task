// ignore_for_file: depend_on_referenced_packages

import 'dart:io';

import 'package:camera/camera.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'camera_state.freezed.dart';

@freezed
abstract class CameraState with _$CameraState {
  const factory CameraState.initial() = _Initial;
  const factory CameraState.cameraLoading() = _CameraLoading;
  const factory CameraState.cameraReady(CameraController controller) =
      _CameraReady;
  const factory CameraState.pictureTaken(File? picture) = _PictureTaken;

  const factory CameraState.cameraError(String error) = _CameraError;
}
