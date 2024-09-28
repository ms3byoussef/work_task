// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransactionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() transactionLoading,
    required TResult Function() transactionSuccessfully,
    required TResult Function(TransactionModel model) transactionChange,
    required TResult Function(AppExceptions error) transactionError,
    required TResult Function(File? imageFile) uploadImageSuccess,
    required TResult Function() uploadingImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? transactionLoading,
    TResult? Function()? transactionSuccessfully,
    TResult? Function(TransactionModel model)? transactionChange,
    TResult? Function(AppExceptions error)? transactionError,
    TResult? Function(File? imageFile)? uploadImageSuccess,
    TResult? Function()? uploadingImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? transactionLoading,
    TResult Function()? transactionSuccessfully,
    TResult Function(TransactionModel model)? transactionChange,
    TResult Function(AppExceptions error)? transactionError,
    TResult Function(File? imageFile)? uploadImageSuccess,
    TResult Function()? uploadingImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TransactionLoading value) transactionLoading,
    required TResult Function(_TransactionSuccessfully value)
        transactionSuccessfully,
    required TResult Function(_TransactionChange value) transactionChange,
    required TResult Function(_TransactionError value) transactionError,
    required TResult Function(_UploadImageSuccess value) uploadImageSuccess,
    required TResult Function(_UploadingImage value) uploadingImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TransactionLoading value)? transactionLoading,
    TResult? Function(_TransactionSuccessfully value)? transactionSuccessfully,
    TResult? Function(_TransactionChange value)? transactionChange,
    TResult? Function(_TransactionError value)? transactionError,
    TResult? Function(_UploadImageSuccess value)? uploadImageSuccess,
    TResult? Function(_UploadingImage value)? uploadingImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TransactionLoading value)? transactionLoading,
    TResult Function(_TransactionSuccessfully value)? transactionSuccessfully,
    TResult Function(_TransactionChange value)? transactionChange,
    TResult Function(_TransactionError value)? transactionError,
    TResult Function(_UploadImageSuccess value)? uploadImageSuccess,
    TResult Function(_UploadingImage value)? uploadingImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionStateCopyWith<$Res> {
  factory $TransactionStateCopyWith(
          TransactionState value, $Res Function(TransactionState) then) =
      _$TransactionStateCopyWithImpl<$Res, TransactionState>;
}

/// @nodoc
class _$TransactionStateCopyWithImpl<$Res, $Val extends TransactionState>
    implements $TransactionStateCopyWith<$Res> {
  _$TransactionStateCopyWithImpl(this._value, this._then);

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
    extends _$TransactionStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'TransactionState.initial()';
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
    required TResult Function() transactionLoading,
    required TResult Function() transactionSuccessfully,
    required TResult Function(TransactionModel model) transactionChange,
    required TResult Function(AppExceptions error) transactionError,
    required TResult Function(File? imageFile) uploadImageSuccess,
    required TResult Function() uploadingImage,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? transactionLoading,
    TResult? Function()? transactionSuccessfully,
    TResult? Function(TransactionModel model)? transactionChange,
    TResult? Function(AppExceptions error)? transactionError,
    TResult? Function(File? imageFile)? uploadImageSuccess,
    TResult? Function()? uploadingImage,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? transactionLoading,
    TResult Function()? transactionSuccessfully,
    TResult Function(TransactionModel model)? transactionChange,
    TResult Function(AppExceptions error)? transactionError,
    TResult Function(File? imageFile)? uploadImageSuccess,
    TResult Function()? uploadingImage,
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
    required TResult Function(_TransactionLoading value) transactionLoading,
    required TResult Function(_TransactionSuccessfully value)
        transactionSuccessfully,
    required TResult Function(_TransactionChange value) transactionChange,
    required TResult Function(_TransactionError value) transactionError,
    required TResult Function(_UploadImageSuccess value) uploadImageSuccess,
    required TResult Function(_UploadingImage value) uploadingImage,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TransactionLoading value)? transactionLoading,
    TResult? Function(_TransactionSuccessfully value)? transactionSuccessfully,
    TResult? Function(_TransactionChange value)? transactionChange,
    TResult? Function(_TransactionError value)? transactionError,
    TResult? Function(_UploadImageSuccess value)? uploadImageSuccess,
    TResult? Function(_UploadingImage value)? uploadingImage,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TransactionLoading value)? transactionLoading,
    TResult Function(_TransactionSuccessfully value)? transactionSuccessfully,
    TResult Function(_TransactionChange value)? transactionChange,
    TResult Function(_TransactionError value)? transactionError,
    TResult Function(_UploadImageSuccess value)? uploadImageSuccess,
    TResult Function(_UploadingImage value)? uploadingImage,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TransactionState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$TransactionLoadingImplCopyWith<$Res> {
  factory _$$TransactionLoadingImplCopyWith(_$TransactionLoadingImpl value,
          $Res Function(_$TransactionLoadingImpl) then) =
      __$$TransactionLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionLoadingImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionLoadingImpl>
    implements _$$TransactionLoadingImplCopyWith<$Res> {
  __$$TransactionLoadingImplCopyWithImpl(_$TransactionLoadingImpl _value,
      $Res Function(_$TransactionLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TransactionLoadingImpl implements _TransactionLoading {
  const _$TransactionLoadingImpl();

  @override
  String toString() {
    return 'TransactionState.transactionLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TransactionLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() transactionLoading,
    required TResult Function() transactionSuccessfully,
    required TResult Function(TransactionModel model) transactionChange,
    required TResult Function(AppExceptions error) transactionError,
    required TResult Function(File? imageFile) uploadImageSuccess,
    required TResult Function() uploadingImage,
  }) {
    return transactionLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? transactionLoading,
    TResult? Function()? transactionSuccessfully,
    TResult? Function(TransactionModel model)? transactionChange,
    TResult? Function(AppExceptions error)? transactionError,
    TResult? Function(File? imageFile)? uploadImageSuccess,
    TResult? Function()? uploadingImage,
  }) {
    return transactionLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? transactionLoading,
    TResult Function()? transactionSuccessfully,
    TResult Function(TransactionModel model)? transactionChange,
    TResult Function(AppExceptions error)? transactionError,
    TResult Function(File? imageFile)? uploadImageSuccess,
    TResult Function()? uploadingImage,
    required TResult orElse(),
  }) {
    if (transactionLoading != null) {
      return transactionLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TransactionLoading value) transactionLoading,
    required TResult Function(_TransactionSuccessfully value)
        transactionSuccessfully,
    required TResult Function(_TransactionChange value) transactionChange,
    required TResult Function(_TransactionError value) transactionError,
    required TResult Function(_UploadImageSuccess value) uploadImageSuccess,
    required TResult Function(_UploadingImage value) uploadingImage,
  }) {
    return transactionLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TransactionLoading value)? transactionLoading,
    TResult? Function(_TransactionSuccessfully value)? transactionSuccessfully,
    TResult? Function(_TransactionChange value)? transactionChange,
    TResult? Function(_TransactionError value)? transactionError,
    TResult? Function(_UploadImageSuccess value)? uploadImageSuccess,
    TResult? Function(_UploadingImage value)? uploadingImage,
  }) {
    return transactionLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TransactionLoading value)? transactionLoading,
    TResult Function(_TransactionSuccessfully value)? transactionSuccessfully,
    TResult Function(_TransactionChange value)? transactionChange,
    TResult Function(_TransactionError value)? transactionError,
    TResult Function(_UploadImageSuccess value)? uploadImageSuccess,
    TResult Function(_UploadingImage value)? uploadingImage,
    required TResult orElse(),
  }) {
    if (transactionLoading != null) {
      return transactionLoading(this);
    }
    return orElse();
  }
}

abstract class _TransactionLoading implements TransactionState {
  const factory _TransactionLoading() = _$TransactionLoadingImpl;
}

/// @nodoc
abstract class _$$TransactionSuccessfullyImplCopyWith<$Res> {
  factory _$$TransactionSuccessfullyImplCopyWith(
          _$TransactionSuccessfullyImpl value,
          $Res Function(_$TransactionSuccessfullyImpl) then) =
      __$$TransactionSuccessfullyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionSuccessfullyImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionSuccessfullyImpl>
    implements _$$TransactionSuccessfullyImplCopyWith<$Res> {
  __$$TransactionSuccessfullyImplCopyWithImpl(
      _$TransactionSuccessfullyImpl _value,
      $Res Function(_$TransactionSuccessfullyImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TransactionSuccessfullyImpl implements _TransactionSuccessfully {
  const _$TransactionSuccessfullyImpl();

  @override
  String toString() {
    return 'TransactionState.transactionSuccessfully()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionSuccessfullyImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() transactionLoading,
    required TResult Function() transactionSuccessfully,
    required TResult Function(TransactionModel model) transactionChange,
    required TResult Function(AppExceptions error) transactionError,
    required TResult Function(File? imageFile) uploadImageSuccess,
    required TResult Function() uploadingImage,
  }) {
    return transactionSuccessfully();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? transactionLoading,
    TResult? Function()? transactionSuccessfully,
    TResult? Function(TransactionModel model)? transactionChange,
    TResult? Function(AppExceptions error)? transactionError,
    TResult? Function(File? imageFile)? uploadImageSuccess,
    TResult? Function()? uploadingImage,
  }) {
    return transactionSuccessfully?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? transactionLoading,
    TResult Function()? transactionSuccessfully,
    TResult Function(TransactionModel model)? transactionChange,
    TResult Function(AppExceptions error)? transactionError,
    TResult Function(File? imageFile)? uploadImageSuccess,
    TResult Function()? uploadingImage,
    required TResult orElse(),
  }) {
    if (transactionSuccessfully != null) {
      return transactionSuccessfully();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TransactionLoading value) transactionLoading,
    required TResult Function(_TransactionSuccessfully value)
        transactionSuccessfully,
    required TResult Function(_TransactionChange value) transactionChange,
    required TResult Function(_TransactionError value) transactionError,
    required TResult Function(_UploadImageSuccess value) uploadImageSuccess,
    required TResult Function(_UploadingImage value) uploadingImage,
  }) {
    return transactionSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TransactionLoading value)? transactionLoading,
    TResult? Function(_TransactionSuccessfully value)? transactionSuccessfully,
    TResult? Function(_TransactionChange value)? transactionChange,
    TResult? Function(_TransactionError value)? transactionError,
    TResult? Function(_UploadImageSuccess value)? uploadImageSuccess,
    TResult? Function(_UploadingImage value)? uploadingImage,
  }) {
    return transactionSuccessfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TransactionLoading value)? transactionLoading,
    TResult Function(_TransactionSuccessfully value)? transactionSuccessfully,
    TResult Function(_TransactionChange value)? transactionChange,
    TResult Function(_TransactionError value)? transactionError,
    TResult Function(_UploadImageSuccess value)? uploadImageSuccess,
    TResult Function(_UploadingImage value)? uploadingImage,
    required TResult orElse(),
  }) {
    if (transactionSuccessfully != null) {
      return transactionSuccessfully(this);
    }
    return orElse();
  }
}

abstract class _TransactionSuccessfully implements TransactionState {
  const factory _TransactionSuccessfully() = _$TransactionSuccessfullyImpl;
}

/// @nodoc
abstract class _$$TransactionChangeImplCopyWith<$Res> {
  factory _$$TransactionChangeImplCopyWith(_$TransactionChangeImpl value,
          $Res Function(_$TransactionChangeImpl) then) =
      __$$TransactionChangeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TransactionModel model});
}

/// @nodoc
class __$$TransactionChangeImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionChangeImpl>
    implements _$$TransactionChangeImplCopyWith<$Res> {
  __$$TransactionChangeImplCopyWithImpl(_$TransactionChangeImpl _value,
      $Res Function(_$TransactionChangeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? model = null,
  }) {
    return _then(_$TransactionChangeImpl(
      null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as TransactionModel,
    ));
  }
}

/// @nodoc

class _$TransactionChangeImpl implements _TransactionChange {
  const _$TransactionChangeImpl(this.model);

  @override
  final TransactionModel model;

  @override
  String toString() {
    return 'TransactionState.transactionChange(model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionChangeImpl &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode => Object.hash(runtimeType, model);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionChangeImplCopyWith<_$TransactionChangeImpl> get copyWith =>
      __$$TransactionChangeImplCopyWithImpl<_$TransactionChangeImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() transactionLoading,
    required TResult Function() transactionSuccessfully,
    required TResult Function(TransactionModel model) transactionChange,
    required TResult Function(AppExceptions error) transactionError,
    required TResult Function(File? imageFile) uploadImageSuccess,
    required TResult Function() uploadingImage,
  }) {
    return transactionChange(model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? transactionLoading,
    TResult? Function()? transactionSuccessfully,
    TResult? Function(TransactionModel model)? transactionChange,
    TResult? Function(AppExceptions error)? transactionError,
    TResult? Function(File? imageFile)? uploadImageSuccess,
    TResult? Function()? uploadingImage,
  }) {
    return transactionChange?.call(model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? transactionLoading,
    TResult Function()? transactionSuccessfully,
    TResult Function(TransactionModel model)? transactionChange,
    TResult Function(AppExceptions error)? transactionError,
    TResult Function(File? imageFile)? uploadImageSuccess,
    TResult Function()? uploadingImage,
    required TResult orElse(),
  }) {
    if (transactionChange != null) {
      return transactionChange(model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TransactionLoading value) transactionLoading,
    required TResult Function(_TransactionSuccessfully value)
        transactionSuccessfully,
    required TResult Function(_TransactionChange value) transactionChange,
    required TResult Function(_TransactionError value) transactionError,
    required TResult Function(_UploadImageSuccess value) uploadImageSuccess,
    required TResult Function(_UploadingImage value) uploadingImage,
  }) {
    return transactionChange(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TransactionLoading value)? transactionLoading,
    TResult? Function(_TransactionSuccessfully value)? transactionSuccessfully,
    TResult? Function(_TransactionChange value)? transactionChange,
    TResult? Function(_TransactionError value)? transactionError,
    TResult? Function(_UploadImageSuccess value)? uploadImageSuccess,
    TResult? Function(_UploadingImage value)? uploadingImage,
  }) {
    return transactionChange?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TransactionLoading value)? transactionLoading,
    TResult Function(_TransactionSuccessfully value)? transactionSuccessfully,
    TResult Function(_TransactionChange value)? transactionChange,
    TResult Function(_TransactionError value)? transactionError,
    TResult Function(_UploadImageSuccess value)? uploadImageSuccess,
    TResult Function(_UploadingImage value)? uploadingImage,
    required TResult orElse(),
  }) {
    if (transactionChange != null) {
      return transactionChange(this);
    }
    return orElse();
  }
}

abstract class _TransactionChange implements TransactionState {
  const factory _TransactionChange(final TransactionModel model) =
      _$TransactionChangeImpl;

  TransactionModel get model;
  @JsonKey(ignore: true)
  _$$TransactionChangeImplCopyWith<_$TransactionChangeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionErrorImplCopyWith<$Res> {
  factory _$$TransactionErrorImplCopyWith(_$TransactionErrorImpl value,
          $Res Function(_$TransactionErrorImpl) then) =
      __$$TransactionErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({AppExceptions error});
}

/// @nodoc
class __$$TransactionErrorImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$TransactionErrorImpl>
    implements _$$TransactionErrorImplCopyWith<$Res> {
  __$$TransactionErrorImplCopyWithImpl(_$TransactionErrorImpl _value,
      $Res Function(_$TransactionErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$TransactionErrorImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppExceptions,
    ));
  }
}

/// @nodoc

class _$TransactionErrorImpl implements _TransactionError {
  const _$TransactionErrorImpl(this.error);

  @override
  final AppExceptions error;

  @override
  String toString() {
    return 'TransactionState.transactionError(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionErrorImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionErrorImplCopyWith<_$TransactionErrorImpl> get copyWith =>
      __$$TransactionErrorImplCopyWithImpl<_$TransactionErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() transactionLoading,
    required TResult Function() transactionSuccessfully,
    required TResult Function(TransactionModel model) transactionChange,
    required TResult Function(AppExceptions error) transactionError,
    required TResult Function(File? imageFile) uploadImageSuccess,
    required TResult Function() uploadingImage,
  }) {
    return transactionError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? transactionLoading,
    TResult? Function()? transactionSuccessfully,
    TResult? Function(TransactionModel model)? transactionChange,
    TResult? Function(AppExceptions error)? transactionError,
    TResult? Function(File? imageFile)? uploadImageSuccess,
    TResult? Function()? uploadingImage,
  }) {
    return transactionError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? transactionLoading,
    TResult Function()? transactionSuccessfully,
    TResult Function(TransactionModel model)? transactionChange,
    TResult Function(AppExceptions error)? transactionError,
    TResult Function(File? imageFile)? uploadImageSuccess,
    TResult Function()? uploadingImage,
    required TResult orElse(),
  }) {
    if (transactionError != null) {
      return transactionError(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TransactionLoading value) transactionLoading,
    required TResult Function(_TransactionSuccessfully value)
        transactionSuccessfully,
    required TResult Function(_TransactionChange value) transactionChange,
    required TResult Function(_TransactionError value) transactionError,
    required TResult Function(_UploadImageSuccess value) uploadImageSuccess,
    required TResult Function(_UploadingImage value) uploadingImage,
  }) {
    return transactionError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TransactionLoading value)? transactionLoading,
    TResult? Function(_TransactionSuccessfully value)? transactionSuccessfully,
    TResult? Function(_TransactionChange value)? transactionChange,
    TResult? Function(_TransactionError value)? transactionError,
    TResult? Function(_UploadImageSuccess value)? uploadImageSuccess,
    TResult? Function(_UploadingImage value)? uploadingImage,
  }) {
    return transactionError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TransactionLoading value)? transactionLoading,
    TResult Function(_TransactionSuccessfully value)? transactionSuccessfully,
    TResult Function(_TransactionChange value)? transactionChange,
    TResult Function(_TransactionError value)? transactionError,
    TResult Function(_UploadImageSuccess value)? uploadImageSuccess,
    TResult Function(_UploadingImage value)? uploadingImage,
    required TResult orElse(),
  }) {
    if (transactionError != null) {
      return transactionError(this);
    }
    return orElse();
  }
}

abstract class _TransactionError implements TransactionState {
  const factory _TransactionError(final AppExceptions error) =
      _$TransactionErrorImpl;

  AppExceptions get error;
  @JsonKey(ignore: true)
  _$$TransactionErrorImplCopyWith<_$TransactionErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadImageSuccessImplCopyWith<$Res> {
  factory _$$UploadImageSuccessImplCopyWith(_$UploadImageSuccessImpl value,
          $Res Function(_$UploadImageSuccessImpl) then) =
      __$$UploadImageSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({File? imageFile});
}

/// @nodoc
class __$$UploadImageSuccessImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$UploadImageSuccessImpl>
    implements _$$UploadImageSuccessImplCopyWith<$Res> {
  __$$UploadImageSuccessImplCopyWithImpl(_$UploadImageSuccessImpl _value,
      $Res Function(_$UploadImageSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageFile = freezed,
  }) {
    return _then(_$UploadImageSuccessImpl(
      freezed == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$UploadImageSuccessImpl implements _UploadImageSuccess {
  const _$UploadImageSuccessImpl(this.imageFile);

  @override
  final File? imageFile;

  @override
  String toString() {
    return 'TransactionState.uploadImageSuccess(imageFile: $imageFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadImageSuccessImpl &&
            (identical(other.imageFile, imageFile) ||
                other.imageFile == imageFile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageFile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadImageSuccessImplCopyWith<_$UploadImageSuccessImpl> get copyWith =>
      __$$UploadImageSuccessImplCopyWithImpl<_$UploadImageSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() transactionLoading,
    required TResult Function() transactionSuccessfully,
    required TResult Function(TransactionModel model) transactionChange,
    required TResult Function(AppExceptions error) transactionError,
    required TResult Function(File? imageFile) uploadImageSuccess,
    required TResult Function() uploadingImage,
  }) {
    return uploadImageSuccess(imageFile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? transactionLoading,
    TResult? Function()? transactionSuccessfully,
    TResult? Function(TransactionModel model)? transactionChange,
    TResult? Function(AppExceptions error)? transactionError,
    TResult? Function(File? imageFile)? uploadImageSuccess,
    TResult? Function()? uploadingImage,
  }) {
    return uploadImageSuccess?.call(imageFile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? transactionLoading,
    TResult Function()? transactionSuccessfully,
    TResult Function(TransactionModel model)? transactionChange,
    TResult Function(AppExceptions error)? transactionError,
    TResult Function(File? imageFile)? uploadImageSuccess,
    TResult Function()? uploadingImage,
    required TResult orElse(),
  }) {
    if (uploadImageSuccess != null) {
      return uploadImageSuccess(imageFile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TransactionLoading value) transactionLoading,
    required TResult Function(_TransactionSuccessfully value)
        transactionSuccessfully,
    required TResult Function(_TransactionChange value) transactionChange,
    required TResult Function(_TransactionError value) transactionError,
    required TResult Function(_UploadImageSuccess value) uploadImageSuccess,
    required TResult Function(_UploadingImage value) uploadingImage,
  }) {
    return uploadImageSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TransactionLoading value)? transactionLoading,
    TResult? Function(_TransactionSuccessfully value)? transactionSuccessfully,
    TResult? Function(_TransactionChange value)? transactionChange,
    TResult? Function(_TransactionError value)? transactionError,
    TResult? Function(_UploadImageSuccess value)? uploadImageSuccess,
    TResult? Function(_UploadingImage value)? uploadingImage,
  }) {
    return uploadImageSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TransactionLoading value)? transactionLoading,
    TResult Function(_TransactionSuccessfully value)? transactionSuccessfully,
    TResult Function(_TransactionChange value)? transactionChange,
    TResult Function(_TransactionError value)? transactionError,
    TResult Function(_UploadImageSuccess value)? uploadImageSuccess,
    TResult Function(_UploadingImage value)? uploadingImage,
    required TResult orElse(),
  }) {
    if (uploadImageSuccess != null) {
      return uploadImageSuccess(this);
    }
    return orElse();
  }
}

abstract class _UploadImageSuccess implements TransactionState {
  const factory _UploadImageSuccess(final File? imageFile) =
      _$UploadImageSuccessImpl;

  File? get imageFile;
  @JsonKey(ignore: true)
  _$$UploadImageSuccessImplCopyWith<_$UploadImageSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadingImageImplCopyWith<$Res> {
  factory _$$UploadingImageImplCopyWith(_$UploadingImageImpl value,
          $Res Function(_$UploadingImageImpl) then) =
      __$$UploadingImageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UploadingImageImplCopyWithImpl<$Res>
    extends _$TransactionStateCopyWithImpl<$Res, _$UploadingImageImpl>
    implements _$$UploadingImageImplCopyWith<$Res> {
  __$$UploadingImageImplCopyWithImpl(
      _$UploadingImageImpl _value, $Res Function(_$UploadingImageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UploadingImageImpl implements _UploadingImage {
  const _$UploadingImageImpl();

  @override
  String toString() {
    return 'TransactionState.uploadingImage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UploadingImageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() transactionLoading,
    required TResult Function() transactionSuccessfully,
    required TResult Function(TransactionModel model) transactionChange,
    required TResult Function(AppExceptions error) transactionError,
    required TResult Function(File? imageFile) uploadImageSuccess,
    required TResult Function() uploadingImage,
  }) {
    return uploadingImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? transactionLoading,
    TResult? Function()? transactionSuccessfully,
    TResult? Function(TransactionModel model)? transactionChange,
    TResult? Function(AppExceptions error)? transactionError,
    TResult? Function(File? imageFile)? uploadImageSuccess,
    TResult? Function()? uploadingImage,
  }) {
    return uploadingImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? transactionLoading,
    TResult Function()? transactionSuccessfully,
    TResult Function(TransactionModel model)? transactionChange,
    TResult Function(AppExceptions error)? transactionError,
    TResult Function(File? imageFile)? uploadImageSuccess,
    TResult Function()? uploadingImage,
    required TResult orElse(),
  }) {
    if (uploadingImage != null) {
      return uploadingImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TransactionLoading value) transactionLoading,
    required TResult Function(_TransactionSuccessfully value)
        transactionSuccessfully,
    required TResult Function(_TransactionChange value) transactionChange,
    required TResult Function(_TransactionError value) transactionError,
    required TResult Function(_UploadImageSuccess value) uploadImageSuccess,
    required TResult Function(_UploadingImage value) uploadingImage,
  }) {
    return uploadingImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TransactionLoading value)? transactionLoading,
    TResult? Function(_TransactionSuccessfully value)? transactionSuccessfully,
    TResult? Function(_TransactionChange value)? transactionChange,
    TResult? Function(_TransactionError value)? transactionError,
    TResult? Function(_UploadImageSuccess value)? uploadImageSuccess,
    TResult? Function(_UploadingImage value)? uploadingImage,
  }) {
    return uploadingImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TransactionLoading value)? transactionLoading,
    TResult Function(_TransactionSuccessfully value)? transactionSuccessfully,
    TResult Function(_TransactionChange value)? transactionChange,
    TResult Function(_TransactionError value)? transactionError,
    TResult Function(_UploadImageSuccess value)? uploadImageSuccess,
    TResult Function(_UploadingImage value)? uploadingImage,
    required TResult orElse(),
  }) {
    if (uploadingImage != null) {
      return uploadingImage(this);
    }
    return orElse();
  }
}

abstract class _UploadingImage implements TransactionState {
  const factory _UploadingImage() = _$UploadingImageImpl;
}
