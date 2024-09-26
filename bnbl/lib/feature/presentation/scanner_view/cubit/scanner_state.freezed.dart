// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scanner_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QRScannerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Barcode? result) qRScannerSuccess,
    required TResult Function(String? error) qRScannerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Barcode? result)? qRScannerSuccess,
    TResult? Function(String? error)? qRScannerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Barcode? result)? qRScannerSuccess,
    TResult Function(String? error)? qRScannerError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_QRScannerSuccess value) qRScannerSuccess,
    required TResult Function(_QRScannerError value) qRScannerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_QRScannerSuccess value)? qRScannerSuccess,
    TResult? Function(_QRScannerError value)? qRScannerError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_QRScannerSuccess value)? qRScannerSuccess,
    TResult Function(_QRScannerError value)? qRScannerError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QRScannerStateCopyWith<$Res> {
  factory $QRScannerStateCopyWith(
          QRScannerState value, $Res Function(QRScannerState) then) =
      _$QRScannerStateCopyWithImpl<$Res, QRScannerState>;
}

/// @nodoc
class _$QRScannerStateCopyWithImpl<$Res, $Val extends QRScannerState>
    implements $QRScannerStateCopyWith<$Res> {
  _$QRScannerStateCopyWithImpl(this._value, this._then);

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
    extends _$QRScannerStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'QRScannerState.initial()';
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
    required TResult Function(Barcode? result) qRScannerSuccess,
    required TResult Function(String? error) qRScannerError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Barcode? result)? qRScannerSuccess,
    TResult? Function(String? error)? qRScannerError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Barcode? result)? qRScannerSuccess,
    TResult Function(String? error)? qRScannerError,
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
    required TResult Function(_QRScannerSuccess value) qRScannerSuccess,
    required TResult Function(_QRScannerError value) qRScannerError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_QRScannerSuccess value)? qRScannerSuccess,
    TResult? Function(_QRScannerError value)? qRScannerError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_QRScannerSuccess value)? qRScannerSuccess,
    TResult Function(_QRScannerError value)? qRScannerError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements QRScannerState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$QRScannerSuccessImplCopyWith<$Res> {
  factory _$$QRScannerSuccessImplCopyWith(_$QRScannerSuccessImpl value,
          $Res Function(_$QRScannerSuccessImpl) then) =
      __$$QRScannerSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Barcode? result});
}

/// @nodoc
class __$$QRScannerSuccessImplCopyWithImpl<$Res>
    extends _$QRScannerStateCopyWithImpl<$Res, _$QRScannerSuccessImpl>
    implements _$$QRScannerSuccessImplCopyWith<$Res> {
  __$$QRScannerSuccessImplCopyWithImpl(_$QRScannerSuccessImpl _value,
      $Res Function(_$QRScannerSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$QRScannerSuccessImpl(
      freezed == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Barcode?,
    ));
  }
}

/// @nodoc

class _$QRScannerSuccessImpl implements _QRScannerSuccess {
  const _$QRScannerSuccessImpl(this.result);

  @override
  final Barcode? result;

  @override
  String toString() {
    return 'QRScannerState.qRScannerSuccess(result: $result)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QRScannerSuccessImpl &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QRScannerSuccessImplCopyWith<_$QRScannerSuccessImpl> get copyWith =>
      __$$QRScannerSuccessImplCopyWithImpl<_$QRScannerSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Barcode? result) qRScannerSuccess,
    required TResult Function(String? error) qRScannerError,
  }) {
    return qRScannerSuccess(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Barcode? result)? qRScannerSuccess,
    TResult? Function(String? error)? qRScannerError,
  }) {
    return qRScannerSuccess?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Barcode? result)? qRScannerSuccess,
    TResult Function(String? error)? qRScannerError,
    required TResult orElse(),
  }) {
    if (qRScannerSuccess != null) {
      return qRScannerSuccess(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_QRScannerSuccess value) qRScannerSuccess,
    required TResult Function(_QRScannerError value) qRScannerError,
  }) {
    return qRScannerSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_QRScannerSuccess value)? qRScannerSuccess,
    TResult? Function(_QRScannerError value)? qRScannerError,
  }) {
    return qRScannerSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_QRScannerSuccess value)? qRScannerSuccess,
    TResult Function(_QRScannerError value)? qRScannerError,
    required TResult orElse(),
  }) {
    if (qRScannerSuccess != null) {
      return qRScannerSuccess(this);
    }
    return orElse();
  }
}

abstract class _QRScannerSuccess implements QRScannerState {
  const factory _QRScannerSuccess(final Barcode? result) =
      _$QRScannerSuccessImpl;

  Barcode? get result;
  @JsonKey(ignore: true)
  _$$QRScannerSuccessImplCopyWith<_$QRScannerSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QRScannerErrorImplCopyWith<$Res> {
  factory _$$QRScannerErrorImplCopyWith(_$QRScannerErrorImpl value,
          $Res Function(_$QRScannerErrorImpl) then) =
      __$$QRScannerErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class __$$QRScannerErrorImplCopyWithImpl<$Res>
    extends _$QRScannerStateCopyWithImpl<$Res, _$QRScannerErrorImpl>
    implements _$$QRScannerErrorImplCopyWith<$Res> {
  __$$QRScannerErrorImplCopyWithImpl(
      _$QRScannerErrorImpl _value, $Res Function(_$QRScannerErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$QRScannerErrorImpl(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$QRScannerErrorImpl implements _QRScannerError {
  const _$QRScannerErrorImpl(this.error);

  @override
  final String? error;

  @override
  String toString() {
    return 'QRScannerState.qRScannerError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QRScannerErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QRScannerErrorImplCopyWith<_$QRScannerErrorImpl> get copyWith =>
      __$$QRScannerErrorImplCopyWithImpl<_$QRScannerErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Barcode? result) qRScannerSuccess,
    required TResult Function(String? error) qRScannerError,
  }) {
    return qRScannerError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Barcode? result)? qRScannerSuccess,
    TResult? Function(String? error)? qRScannerError,
  }) {
    return qRScannerError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Barcode? result)? qRScannerSuccess,
    TResult Function(String? error)? qRScannerError,
    required TResult orElse(),
  }) {
    if (qRScannerError != null) {
      return qRScannerError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_QRScannerSuccess value) qRScannerSuccess,
    required TResult Function(_QRScannerError value) qRScannerError,
  }) {
    return qRScannerError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_QRScannerSuccess value)? qRScannerSuccess,
    TResult? Function(_QRScannerError value)? qRScannerError,
  }) {
    return qRScannerError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_QRScannerSuccess value)? qRScannerSuccess,
    TResult Function(_QRScannerError value)? qRScannerError,
    required TResult orElse(),
  }) {
    if (qRScannerError != null) {
      return qRScannerError(this);
    }
    return orElse();
  }
}

abstract class _QRScannerError implements QRScannerState {
  const factory _QRScannerError(final String? error) = _$QRScannerErrorImpl;

  String? get error;
  @JsonKey(ignore: true)
  _$$QRScannerErrorImplCopyWith<_$QRScannerErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
