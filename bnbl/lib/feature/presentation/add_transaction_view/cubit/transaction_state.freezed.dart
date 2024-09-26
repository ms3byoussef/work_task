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
    required TResult Function(String error) transactionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? transactionLoading,
    TResult? Function()? transactionSuccessfully,
    TResult? Function(String error)? transactionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? transactionLoading,
    TResult Function()? transactionSuccessfully,
    TResult Function(String error)? transactionError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_TransactionLoading value) transactionLoading,
    required TResult Function(_TransactionSuccessfully value)
        transactionSuccessfully,
    required TResult Function(_TransactionError value) transactionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TransactionLoading value)? transactionLoading,
    TResult? Function(_TransactionSuccessfully value)? transactionSuccessfully,
    TResult? Function(_TransactionError value)? transactionError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TransactionLoading value)? transactionLoading,
    TResult Function(_TransactionSuccessfully value)? transactionSuccessfully,
    TResult Function(_TransactionError value)? transactionError,
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
    required TResult Function(String error) transactionError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? transactionLoading,
    TResult? Function()? transactionSuccessfully,
    TResult? Function(String error)? transactionError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? transactionLoading,
    TResult Function()? transactionSuccessfully,
    TResult Function(String error)? transactionError,
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
    required TResult Function(_TransactionError value) transactionError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TransactionLoading value)? transactionLoading,
    TResult? Function(_TransactionSuccessfully value)? transactionSuccessfully,
    TResult? Function(_TransactionError value)? transactionError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TransactionLoading value)? transactionLoading,
    TResult Function(_TransactionSuccessfully value)? transactionSuccessfully,
    TResult Function(_TransactionError value)? transactionError,
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
    required TResult Function(String error) transactionError,
  }) {
    return transactionLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? transactionLoading,
    TResult? Function()? transactionSuccessfully,
    TResult? Function(String error)? transactionError,
  }) {
    return transactionLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? transactionLoading,
    TResult Function()? transactionSuccessfully,
    TResult Function(String error)? transactionError,
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
    required TResult Function(_TransactionError value) transactionError,
  }) {
    return transactionLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TransactionLoading value)? transactionLoading,
    TResult? Function(_TransactionSuccessfully value)? transactionSuccessfully,
    TResult? Function(_TransactionError value)? transactionError,
  }) {
    return transactionLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TransactionLoading value)? transactionLoading,
    TResult Function(_TransactionSuccessfully value)? transactionSuccessfully,
    TResult Function(_TransactionError value)? transactionError,
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
    required TResult Function(String error) transactionError,
  }) {
    return transactionSuccessfully();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? transactionLoading,
    TResult? Function()? transactionSuccessfully,
    TResult? Function(String error)? transactionError,
  }) {
    return transactionSuccessfully?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? transactionLoading,
    TResult Function()? transactionSuccessfully,
    TResult Function(String error)? transactionError,
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
    required TResult Function(_TransactionError value) transactionError,
  }) {
    return transactionSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TransactionLoading value)? transactionLoading,
    TResult? Function(_TransactionSuccessfully value)? transactionSuccessfully,
    TResult? Function(_TransactionError value)? transactionError,
  }) {
    return transactionSuccessfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TransactionLoading value)? transactionLoading,
    TResult Function(_TransactionSuccessfully value)? transactionSuccessfully,
    TResult Function(_TransactionError value)? transactionError,
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
abstract class _$$TransactionErrorImplCopyWith<$Res> {
  factory _$$TransactionErrorImplCopyWith(_$TransactionErrorImpl value,
          $Res Function(_$TransactionErrorImpl) then) =
      __$$TransactionErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
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
              as String,
    ));
  }
}

/// @nodoc

class _$TransactionErrorImpl implements _TransactionError {
  const _$TransactionErrorImpl(this.error);

  @override
  final String error;

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
    required TResult Function(String error) transactionError,
  }) {
    return transactionError(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? transactionLoading,
    TResult? Function()? transactionSuccessfully,
    TResult? Function(String error)? transactionError,
  }) {
    return transactionError?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? transactionLoading,
    TResult Function()? transactionSuccessfully,
    TResult Function(String error)? transactionError,
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
    required TResult Function(_TransactionError value) transactionError,
  }) {
    return transactionError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_TransactionLoading value)? transactionLoading,
    TResult? Function(_TransactionSuccessfully value)? transactionSuccessfully,
    TResult? Function(_TransactionError value)? transactionError,
  }) {
    return transactionError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_TransactionLoading value)? transactionLoading,
    TResult Function(_TransactionSuccessfully value)? transactionSuccessfully,
    TResult Function(_TransactionError value)? transactionError,
    required TResult orElse(),
  }) {
    if (transactionError != null) {
      return transactionError(this);
    }
    return orElse();
  }
}

abstract class _TransactionError implements TransactionState {
  const factory _TransactionError(final String error) = _$TransactionErrorImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$TransactionErrorImplCopyWith<_$TransactionErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
