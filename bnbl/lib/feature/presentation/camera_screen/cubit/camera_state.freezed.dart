// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CameraState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cameraLoading,
    required TResult Function(CameraController controller) cameraReady,
    required TResult Function(File? picture) pictureTaken,
    required TResult Function(String error) cameraError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cameraLoading,
    TResult? Function(CameraController controller)? cameraReady,
    TResult? Function(File? picture)? pictureTaken,
    TResult? Function(String error)? cameraError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cameraLoading,
    TResult Function(CameraController controller)? cameraReady,
    TResult Function(File? picture)? pictureTaken,
    TResult Function(String error)? cameraError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CameraLoading value) cameraLoading,
    required TResult Function(_CameraReady value) cameraReady,
    required TResult Function(_PictureTaken value) pictureTaken,
    required TResult Function(_CameraError value) cameraError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CameraLoading value)? cameraLoading,
    TResult? Function(_CameraReady value)? cameraReady,
    TResult? Function(_PictureTaken value)? pictureTaken,
    TResult? Function(_CameraError value)? cameraError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CameraLoading value)? cameraLoading,
    TResult Function(_CameraReady value)? cameraReady,
    TResult Function(_PictureTaken value)? pictureTaken,
    TResult Function(_CameraError value)? cameraError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraStateCopyWith<$Res> {
  factory $CameraStateCopyWith(
          CameraState value, $Res Function(CameraState) then) =
      _$CameraStateCopyWithImpl<$Res, CameraState>;
}

/// @nodoc
class _$CameraStateCopyWithImpl<$Res, $Val extends CameraState>
    implements $CameraStateCopyWith<$Res> {
  _$CameraStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CameraState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cameraLoading,
    required TResult Function(CameraController controller) cameraReady,
    required TResult Function(File? picture) pictureTaken,
    required TResult Function(String error) cameraError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cameraLoading,
    TResult? Function(CameraController controller)? cameraReady,
    TResult? Function(File? picture)? pictureTaken,
    TResult? Function(String error)? cameraError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cameraLoading,
    TResult Function(CameraController controller)? cameraReady,
    TResult Function(File? picture)? pictureTaken,
    TResult Function(String error)? cameraError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CameraLoading value) cameraLoading,
    required TResult Function(_CameraReady value) cameraReady,
    required TResult Function(_PictureTaken value) pictureTaken,
    required TResult Function(_CameraError value) cameraError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CameraLoading value)? cameraLoading,
    TResult? Function(_CameraReady value)? cameraReady,
    TResult? Function(_PictureTaken value)? pictureTaken,
    TResult? Function(_CameraError value)? cameraError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CameraLoading value)? cameraLoading,
    TResult Function(_CameraReady value)? cameraReady,
    TResult Function(_PictureTaken value)? pictureTaken,
    TResult Function(_CameraError value)? cameraError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CameraState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CameraLoadingImplCopyWith<$Res> {
  factory _$$CameraLoadingImplCopyWith(
          _$CameraLoadingImpl value, $Res Function(_$CameraLoadingImpl) then) =
      __$$CameraLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CameraLoadingImplCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res, _$CameraLoadingImpl>
    implements _$$CameraLoadingImplCopyWith<$Res> {
  __$$CameraLoadingImplCopyWithImpl(
      _$CameraLoadingImpl _value, $Res Function(_$CameraLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CameraLoadingImpl implements _CameraLoading {
  const _$CameraLoadingImpl();

  @override
  String toString() {
    return 'CameraState.cameraLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CameraLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cameraLoading,
    required TResult Function(CameraController controller) cameraReady,
    required TResult Function(File? picture) pictureTaken,
    required TResult Function(String error) cameraError,
  }) {
    return cameraLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cameraLoading,
    TResult? Function(CameraController controller)? cameraReady,
    TResult? Function(File? picture)? pictureTaken,
    TResult? Function(String error)? cameraError,
  }) {
    return cameraLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cameraLoading,
    TResult Function(CameraController controller)? cameraReady,
    TResult Function(File? picture)? pictureTaken,
    TResult Function(String error)? cameraError,
    required TResult orElse(),
  }) {
    if (cameraLoading != null) {
      return cameraLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CameraLoading value) cameraLoading,
    required TResult Function(_CameraReady value) cameraReady,
    required TResult Function(_PictureTaken value) pictureTaken,
    required TResult Function(_CameraError value) cameraError,
  }) {
    return cameraLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CameraLoading value)? cameraLoading,
    TResult? Function(_CameraReady value)? cameraReady,
    TResult? Function(_PictureTaken value)? pictureTaken,
    TResult? Function(_CameraError value)? cameraError,
  }) {
    return cameraLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CameraLoading value)? cameraLoading,
    TResult Function(_CameraReady value)? cameraReady,
    TResult Function(_PictureTaken value)? pictureTaken,
    TResult Function(_CameraError value)? cameraError,
    required TResult orElse(),
  }) {
    if (cameraLoading != null) {
      return cameraLoading(this);
    }
    return orElse();
  }
}

abstract class _CameraLoading implements CameraState {
  const factory _CameraLoading() = _$CameraLoadingImpl;
}

/// @nodoc
abstract class _$$CameraReadyImplCopyWith<$Res> {
  factory _$$CameraReadyImplCopyWith(
          _$CameraReadyImpl value, $Res Function(_$CameraReadyImpl) then) =
      __$$CameraReadyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CameraController controller});
}

/// @nodoc
class __$$CameraReadyImplCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res, _$CameraReadyImpl>
    implements _$$CameraReadyImplCopyWith<$Res> {
  __$$CameraReadyImplCopyWithImpl(
      _$CameraReadyImpl _value, $Res Function(_$CameraReadyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? controller = null,
  }) {
    return _then(_$CameraReadyImpl(
      null == controller
          ? _value.controller
          : controller // ignore: cast_nullable_to_non_nullable
              as CameraController,
    ));
  }
}

/// @nodoc

class _$CameraReadyImpl implements _CameraReady {
  const _$CameraReadyImpl(this.controller);

  @override
  final CameraController controller;

  @override
  String toString() {
    return 'CameraState.cameraReady(controller: $controller)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraReadyImpl &&
            (identical(other.controller, controller) ||
                other.controller == controller));
  }

  @override
  int get hashCode => Object.hash(runtimeType, controller);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CameraReadyImplCopyWith<_$CameraReadyImpl> get copyWith =>
      __$$CameraReadyImplCopyWithImpl<_$CameraReadyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cameraLoading,
    required TResult Function(CameraController controller) cameraReady,
    required TResult Function(File? picture) pictureTaken,
    required TResult Function(String error) cameraError,
  }) {
    return cameraReady(controller);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cameraLoading,
    TResult? Function(CameraController controller)? cameraReady,
    TResult? Function(File? picture)? pictureTaken,
    TResult? Function(String error)? cameraError,
  }) {
    return cameraReady?.call(controller);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cameraLoading,
    TResult Function(CameraController controller)? cameraReady,
    TResult Function(File? picture)? pictureTaken,
    TResult Function(String error)? cameraError,
    required TResult orElse(),
  }) {
    if (cameraReady != null) {
      return cameraReady(controller);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CameraLoading value) cameraLoading,
    required TResult Function(_CameraReady value) cameraReady,
    required TResult Function(_PictureTaken value) pictureTaken,
    required TResult Function(_CameraError value) cameraError,
  }) {
    return cameraReady(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CameraLoading value)? cameraLoading,
    TResult? Function(_CameraReady value)? cameraReady,
    TResult? Function(_PictureTaken value)? pictureTaken,
    TResult? Function(_CameraError value)? cameraError,
  }) {
    return cameraReady?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CameraLoading value)? cameraLoading,
    TResult Function(_CameraReady value)? cameraReady,
    TResult Function(_PictureTaken value)? pictureTaken,
    TResult Function(_CameraError value)? cameraError,
    required TResult orElse(),
  }) {
    if (cameraReady != null) {
      return cameraReady(this);
    }
    return orElse();
  }
}

abstract class _CameraReady implements CameraState {
  const factory _CameraReady(final CameraController controller) =
      _$CameraReadyImpl;

  CameraController get controller;
  @JsonKey(ignore: true)
  _$$CameraReadyImplCopyWith<_$CameraReadyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PictureTakenImplCopyWith<$Res> {
  factory _$$PictureTakenImplCopyWith(
          _$PictureTakenImpl value, $Res Function(_$PictureTakenImpl) then) =
      __$$PictureTakenImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File? picture});
}

/// @nodoc
class __$$PictureTakenImplCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res, _$PictureTakenImpl>
    implements _$$PictureTakenImplCopyWith<$Res> {
  __$$PictureTakenImplCopyWithImpl(
      _$PictureTakenImpl _value, $Res Function(_$PictureTakenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? picture = freezed,
  }) {
    return _then(_$PictureTakenImpl(
      freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$PictureTakenImpl implements _PictureTaken {
  const _$PictureTakenImpl(this.picture);

  @override
  final File? picture;

  @override
  String toString() {
    return 'CameraState.pictureTaken(picture: $picture)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PictureTakenImpl &&
            (identical(other.picture, picture) || other.picture == picture));
  }

  @override
  int get hashCode => Object.hash(runtimeType, picture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PictureTakenImplCopyWith<_$PictureTakenImpl> get copyWith =>
      __$$PictureTakenImplCopyWithImpl<_$PictureTakenImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cameraLoading,
    required TResult Function(CameraController controller) cameraReady,
    required TResult Function(File? picture) pictureTaken,
    required TResult Function(String error) cameraError,
  }) {
    return pictureTaken(picture);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cameraLoading,
    TResult? Function(CameraController controller)? cameraReady,
    TResult? Function(File? picture)? pictureTaken,
    TResult? Function(String error)? cameraError,
  }) {
    return pictureTaken?.call(picture);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cameraLoading,
    TResult Function(CameraController controller)? cameraReady,
    TResult Function(File? picture)? pictureTaken,
    TResult Function(String error)? cameraError,
    required TResult orElse(),
  }) {
    if (pictureTaken != null) {
      return pictureTaken(picture);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CameraLoading value) cameraLoading,
    required TResult Function(_CameraReady value) cameraReady,
    required TResult Function(_PictureTaken value) pictureTaken,
    required TResult Function(_CameraError value) cameraError,
  }) {
    return pictureTaken(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CameraLoading value)? cameraLoading,
    TResult? Function(_CameraReady value)? cameraReady,
    TResult? Function(_PictureTaken value)? pictureTaken,
    TResult? Function(_CameraError value)? cameraError,
  }) {
    return pictureTaken?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CameraLoading value)? cameraLoading,
    TResult Function(_CameraReady value)? cameraReady,
    TResult Function(_PictureTaken value)? pictureTaken,
    TResult Function(_CameraError value)? cameraError,
    required TResult orElse(),
  }) {
    if (pictureTaken != null) {
      return pictureTaken(this);
    }
    return orElse();
  }
}

abstract class _PictureTaken implements CameraState {
  const factory _PictureTaken(final File? picture) = _$PictureTakenImpl;

  File? get picture;
  @JsonKey(ignore: true)
  _$$PictureTakenImplCopyWith<_$PictureTakenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CameraErrorImplCopyWith<$Res> {
  factory _$$CameraErrorImplCopyWith(
          _$CameraErrorImpl value, $Res Function(_$CameraErrorImpl) then) =
      __$$CameraErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$CameraErrorImplCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res, _$CameraErrorImpl>
    implements _$$CameraErrorImplCopyWith<$Res> {
  __$$CameraErrorImplCopyWithImpl(
      _$CameraErrorImpl _value, $Res Function(_$CameraErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$CameraErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CameraErrorImpl implements _CameraError {
  const _$CameraErrorImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'CameraState.cameraError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CameraErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CameraErrorImplCopyWith<_$CameraErrorImpl> get copyWith =>
      __$$CameraErrorImplCopyWithImpl<_$CameraErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() cameraLoading,
    required TResult Function(CameraController controller) cameraReady,
    required TResult Function(File? picture) pictureTaken,
    required TResult Function(String error) cameraError,
  }) {
    return cameraError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? cameraLoading,
    TResult? Function(CameraController controller)? cameraReady,
    TResult? Function(File? picture)? pictureTaken,
    TResult? Function(String error)? cameraError,
  }) {
    return cameraError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? cameraLoading,
    TResult Function(CameraController controller)? cameraReady,
    TResult Function(File? picture)? pictureTaken,
    TResult Function(String error)? cameraError,
    required TResult orElse(),
  }) {
    if (cameraError != null) {
      return cameraError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CameraLoading value) cameraLoading,
    required TResult Function(_CameraReady value) cameraReady,
    required TResult Function(_PictureTaken value) pictureTaken,
    required TResult Function(_CameraError value) cameraError,
  }) {
    return cameraError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CameraLoading value)? cameraLoading,
    TResult? Function(_CameraReady value)? cameraReady,
    TResult? Function(_PictureTaken value)? pictureTaken,
    TResult? Function(_CameraError value)? cameraError,
  }) {
    return cameraError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CameraLoading value)? cameraLoading,
    TResult Function(_CameraReady value)? cameraReady,
    TResult Function(_PictureTaken value)? pictureTaken,
    TResult Function(_CameraError value)? cameraError,
    required TResult orElse(),
  }) {
    if (cameraError != null) {
      return cameraError(this);
    }
    return orElse();
  }
}

abstract class _CameraError implements CameraState {
  const factory _CameraError(final String error) = _$CameraErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$CameraErrorImplCopyWith<_$CameraErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
