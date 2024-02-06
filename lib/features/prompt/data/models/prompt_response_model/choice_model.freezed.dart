// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choice_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChoiceModel _$ChoiceModelFromJson(Map<String, dynamic> json) {
  return _ChoiceModel.fromJson(json);
}

/// @nodoc
mixin _$ChoiceModel {
  MessageModel? get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChoiceModelCopyWith<ChoiceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChoiceModelCopyWith<$Res> {
  factory $ChoiceModelCopyWith(
          ChoiceModel value, $Res Function(ChoiceModel) then) =
      _$ChoiceModelCopyWithImpl<$Res, ChoiceModel>;
  @useResult
  $Res call({MessageModel? message});

  $MessageModelCopyWith<$Res>? get message;
}

/// @nodoc
class _$ChoiceModelCopyWithImpl<$Res, $Val extends ChoiceModel>
    implements $ChoiceModelCopyWith<$Res> {
  _$ChoiceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageModelCopyWith<$Res>? get message {
    if (_value.message == null) {
      return null;
    }

    return $MessageModelCopyWith<$Res>(_value.message!, (value) {
      return _then(_value.copyWith(message: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ChoiceModelImplCopyWith<$Res>
    implements $ChoiceModelCopyWith<$Res> {
  factory _$$ChoiceModelImplCopyWith(
          _$ChoiceModelImpl value, $Res Function(_$ChoiceModelImpl) then) =
      __$$ChoiceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MessageModel? message});

  @override
  $MessageModelCopyWith<$Res>? get message;
}

/// @nodoc
class __$$ChoiceModelImplCopyWithImpl<$Res>
    extends _$ChoiceModelCopyWithImpl<$Res, _$ChoiceModelImpl>
    implements _$$ChoiceModelImplCopyWith<$Res> {
  __$$ChoiceModelImplCopyWithImpl(
      _$ChoiceModelImpl _value, $Res Function(_$ChoiceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$ChoiceModelImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as MessageModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChoiceModelImpl implements _ChoiceModel {
  _$ChoiceModelImpl({this.message});

  factory _$ChoiceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChoiceModelImplFromJson(json);

  @override
  final MessageModel? message;

  @override
  String toString() {
    return 'ChoiceModel(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoiceModelImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChoiceModelImplCopyWith<_$ChoiceModelImpl> get copyWith =>
      __$$ChoiceModelImplCopyWithImpl<_$ChoiceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChoiceModelImplToJson(
      this,
    );
  }
}

abstract class _ChoiceModel implements ChoiceModel {
  factory _ChoiceModel({final MessageModel? message}) = _$ChoiceModelImpl;

  factory _ChoiceModel.fromJson(Map<String, dynamic> json) =
      _$ChoiceModelImpl.fromJson;

  @override
  MessageModel? get message;
  @override
  @JsonKey(ignore: true)
  _$$ChoiceModelImplCopyWith<_$ChoiceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
