// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cached_result_status_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CachedResultStatusState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(bool isSaved, bool showSnackbar) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(bool isSaved, bool showSnackbar)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(bool isSaved, bool showSnackbar)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CachedResultStatusLoadingState value) loading,
    required TResult Function(CachedResultStatusErrorState value) error,
    required TResult Function(CachedResultStatusLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CachedResultStatusLoadingState value)? loading,
    TResult? Function(CachedResultStatusErrorState value)? error,
    TResult? Function(CachedResultStatusLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CachedResultStatusLoadingState value)? loading,
    TResult Function(CachedResultStatusErrorState value)? error,
    TResult Function(CachedResultStatusLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CachedResultStatusStateCopyWith<$Res> {
  factory $CachedResultStatusStateCopyWith(CachedResultStatusState value,
          $Res Function(CachedResultStatusState) then) =
      _$CachedResultStatusStateCopyWithImpl<$Res, CachedResultStatusState>;
}

/// @nodoc
class _$CachedResultStatusStateCopyWithImpl<$Res,
        $Val extends CachedResultStatusState>
    implements $CachedResultStatusStateCopyWith<$Res> {
  _$CachedResultStatusStateCopyWithImpl(this._value, this._then);

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
    extends _$CachedResultStatusStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'CachedResultStatusState.initial()';
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
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(bool isSaved, bool showSnackbar) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(bool isSaved, bool showSnackbar)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(bool isSaved, bool showSnackbar)? loaded,
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
    required TResult Function(CachedResultStatusLoadingState value) loading,
    required TResult Function(CachedResultStatusErrorState value) error,
    required TResult Function(CachedResultStatusLoadedState value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CachedResultStatusLoadingState value)? loading,
    TResult? Function(CachedResultStatusErrorState value)? error,
    TResult? Function(CachedResultStatusLoadedState value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CachedResultStatusLoadingState value)? loading,
    TResult Function(CachedResultStatusErrorState value)? error,
    TResult Function(CachedResultStatusLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CachedResultStatusState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CachedResultStatusLoadingStateImplCopyWith<$Res> {
  factory _$$CachedResultStatusLoadingStateImplCopyWith(
          _$CachedResultStatusLoadingStateImpl value,
          $Res Function(_$CachedResultStatusLoadingStateImpl) then) =
      __$$CachedResultStatusLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CachedResultStatusLoadingStateImplCopyWithImpl<$Res>
    extends _$CachedResultStatusStateCopyWithImpl<$Res,
        _$CachedResultStatusLoadingStateImpl>
    implements _$$CachedResultStatusLoadingStateImplCopyWith<$Res> {
  __$$CachedResultStatusLoadingStateImplCopyWithImpl(
      _$CachedResultStatusLoadingStateImpl _value,
      $Res Function(_$CachedResultStatusLoadingStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CachedResultStatusLoadingStateImpl
    implements CachedResultStatusLoadingState {
  const _$CachedResultStatusLoadingStateImpl();

  @override
  String toString() {
    return 'CachedResultStatusState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CachedResultStatusLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(bool isSaved, bool showSnackbar) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(bool isSaved, bool showSnackbar)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(bool isSaved, bool showSnackbar)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CachedResultStatusLoadingState value) loading,
    required TResult Function(CachedResultStatusErrorState value) error,
    required TResult Function(CachedResultStatusLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CachedResultStatusLoadingState value)? loading,
    TResult? Function(CachedResultStatusErrorState value)? error,
    TResult? Function(CachedResultStatusLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CachedResultStatusLoadingState value)? loading,
    TResult Function(CachedResultStatusErrorState value)? error,
    TResult Function(CachedResultStatusLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class CachedResultStatusLoadingState
    implements CachedResultStatusState {
  const factory CachedResultStatusLoadingState() =
      _$CachedResultStatusLoadingStateImpl;
}

/// @nodoc
abstract class _$$CachedResultStatusErrorStateImplCopyWith<$Res> {
  factory _$$CachedResultStatusErrorStateImplCopyWith(
          _$CachedResultStatusErrorStateImpl value,
          $Res Function(_$CachedResultStatusErrorStateImpl) then) =
      __$$CachedResultStatusErrorStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CachedResultStatusErrorStateImplCopyWithImpl<$Res>
    extends _$CachedResultStatusStateCopyWithImpl<$Res,
        _$CachedResultStatusErrorStateImpl>
    implements _$$CachedResultStatusErrorStateImplCopyWith<$Res> {
  __$$CachedResultStatusErrorStateImplCopyWithImpl(
      _$CachedResultStatusErrorStateImpl _value,
      $Res Function(_$CachedResultStatusErrorStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CachedResultStatusErrorStateImpl
    implements CachedResultStatusErrorState {
  const _$CachedResultStatusErrorStateImpl();

  @override
  String toString() {
    return 'CachedResultStatusState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CachedResultStatusErrorStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(bool isSaved, bool showSnackbar) loaded,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(bool isSaved, bool showSnackbar)? loaded,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(bool isSaved, bool showSnackbar)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CachedResultStatusLoadingState value) loading,
    required TResult Function(CachedResultStatusErrorState value) error,
    required TResult Function(CachedResultStatusLoadedState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CachedResultStatusLoadingState value)? loading,
    TResult? Function(CachedResultStatusErrorState value)? error,
    TResult? Function(CachedResultStatusLoadedState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CachedResultStatusLoadingState value)? loading,
    TResult Function(CachedResultStatusErrorState value)? error,
    TResult Function(CachedResultStatusLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class CachedResultStatusErrorState implements CachedResultStatusState {
  const factory CachedResultStatusErrorState() =
      _$CachedResultStatusErrorStateImpl;
}

/// @nodoc
abstract class _$$CachedResultStatusLoadedStateImplCopyWith<$Res> {
  factory _$$CachedResultStatusLoadedStateImplCopyWith(
          _$CachedResultStatusLoadedStateImpl value,
          $Res Function(_$CachedResultStatusLoadedStateImpl) then) =
      __$$CachedResultStatusLoadedStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isSaved, bool showSnackbar});
}

/// @nodoc
class __$$CachedResultStatusLoadedStateImplCopyWithImpl<$Res>
    extends _$CachedResultStatusStateCopyWithImpl<$Res,
        _$CachedResultStatusLoadedStateImpl>
    implements _$$CachedResultStatusLoadedStateImplCopyWith<$Res> {
  __$$CachedResultStatusLoadedStateImplCopyWithImpl(
      _$CachedResultStatusLoadedStateImpl _value,
      $Res Function(_$CachedResultStatusLoadedStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSaved = null,
    Object? showSnackbar = null,
  }) {
    return _then(_$CachedResultStatusLoadedStateImpl(
      null == isSaved
          ? _value.isSaved
          : isSaved // ignore: cast_nullable_to_non_nullable
              as bool,
      null == showSnackbar
          ? _value.showSnackbar
          : showSnackbar // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$CachedResultStatusLoadedStateImpl
    implements CachedResultStatusLoadedState {
  const _$CachedResultStatusLoadedStateImpl(this.isSaved, this.showSnackbar);

  @override
  final bool isSaved;
  @override
  final bool showSnackbar;

  @override
  String toString() {
    return 'CachedResultStatusState.loaded(isSaved: $isSaved, showSnackbar: $showSnackbar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CachedResultStatusLoadedStateImpl &&
            (identical(other.isSaved, isSaved) || other.isSaved == isSaved) &&
            (identical(other.showSnackbar, showSnackbar) ||
                other.showSnackbar == showSnackbar));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSaved, showSnackbar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CachedResultStatusLoadedStateImplCopyWith<
          _$CachedResultStatusLoadedStateImpl>
      get copyWith => __$$CachedResultStatusLoadedStateImplCopyWithImpl<
          _$CachedResultStatusLoadedStateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(bool isSaved, bool showSnackbar) loaded,
  }) {
    return loaded(isSaved, showSnackbar);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(bool isSaved, bool showSnackbar)? loaded,
  }) {
    return loaded?.call(isSaved, showSnackbar);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(bool isSaved, bool showSnackbar)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(isSaved, showSnackbar);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(CachedResultStatusLoadingState value) loading,
    required TResult Function(CachedResultStatusErrorState value) error,
    required TResult Function(CachedResultStatusLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(CachedResultStatusLoadingState value)? loading,
    TResult? Function(CachedResultStatusErrorState value)? error,
    TResult? Function(CachedResultStatusLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(CachedResultStatusLoadingState value)? loading,
    TResult Function(CachedResultStatusErrorState value)? error,
    TResult Function(CachedResultStatusLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CachedResultStatusLoadedState
    implements CachedResultStatusState {
  const factory CachedResultStatusLoadedState(
          final bool isSaved, final bool showSnackbar) =
      _$CachedResultStatusLoadedStateImpl;

  bool get isSaved;
  bool get showSnackbar;
  @JsonKey(ignore: true)
  _$$CachedResultStatusLoadedStateImplCopyWith<
          _$CachedResultStatusLoadedStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
