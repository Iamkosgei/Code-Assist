// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'prompt_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PromptResponseModel _$PromptResponseModelFromJson(Map<String, dynamic> json) {
  return _PromptResponseModel.fromJson(json);
}

/// @nodoc
mixin _$PromptResponseModel {
  List<ChoiceModel>? get choices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PromptResponseModelCopyWith<PromptResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PromptResponseModelCopyWith<$Res> {
  factory $PromptResponseModelCopyWith(
          PromptResponseModel value, $Res Function(PromptResponseModel) then) =
      _$PromptResponseModelCopyWithImpl<$Res, PromptResponseModel>;
  @useResult
  $Res call({List<ChoiceModel>? choices});
}

/// @nodoc
class _$PromptResponseModelCopyWithImpl<$Res, $Val extends PromptResponseModel>
    implements $PromptResponseModelCopyWith<$Res> {
  _$PromptResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? choices = freezed,
  }) {
    return _then(_value.copyWith(
      choices: freezed == choices
          ? _value.choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<ChoiceModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PromptResponseModelImplCopyWith<$Res>
    implements $PromptResponseModelCopyWith<$Res> {
  factory _$$PromptResponseModelImplCopyWith(_$PromptResponseModelImpl value,
          $Res Function(_$PromptResponseModelImpl) then) =
      __$$PromptResponseModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ChoiceModel>? choices});
}

/// @nodoc
class __$$PromptResponseModelImplCopyWithImpl<$Res>
    extends _$PromptResponseModelCopyWithImpl<$Res, _$PromptResponseModelImpl>
    implements _$$PromptResponseModelImplCopyWith<$Res> {
  __$$PromptResponseModelImplCopyWithImpl(_$PromptResponseModelImpl _value,
      $Res Function(_$PromptResponseModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? choices = freezed,
  }) {
    return _then(_$PromptResponseModelImpl(
      choices: freezed == choices
          ? _value._choices
          : choices // ignore: cast_nullable_to_non_nullable
              as List<ChoiceModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PromptResponseModelImpl implements _PromptResponseModel {
  _$PromptResponseModelImpl({final List<ChoiceModel>? choices})
      : _choices = choices;

  factory _$PromptResponseModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PromptResponseModelImplFromJson(json);

  final List<ChoiceModel>? _choices;
  @override
  List<ChoiceModel>? get choices {
    final value = _choices;
    if (value == null) return null;
    if (_choices is EqualUnmodifiableListView) return _choices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PromptResponseModel(choices: $choices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PromptResponseModelImpl &&
            const DeepCollectionEquality().equals(other._choices, _choices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_choices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PromptResponseModelImplCopyWith<_$PromptResponseModelImpl> get copyWith =>
      __$$PromptResponseModelImplCopyWithImpl<_$PromptResponseModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PromptResponseModelImplToJson(
      this,
    );
  }
}

abstract class _PromptResponseModel implements PromptResponseModel {
  factory _PromptResponseModel({final List<ChoiceModel>? choices}) =
      _$PromptResponseModelImpl;

  factory _PromptResponseModel.fromJson(Map<String, dynamic> json) =
      _$PromptResponseModelImpl.fromJson;

  @override
  List<ChoiceModel>? get choices;
  @override
  @JsonKey(ignore: true)
  _$$PromptResponseModelImplCopyWith<_$PromptResponseModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
