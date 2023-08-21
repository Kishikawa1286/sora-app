// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SlackVerificationModalModel {
  String get slackVerificationCode => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SlackVerificationModalModelCopyWith<SlackVerificationModalModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SlackVerificationModalModelCopyWith<$Res> {
  factory $SlackVerificationModalModelCopyWith(
          SlackVerificationModalModel value,
          $Res Function(SlackVerificationModalModel) then) =
      _$SlackVerificationModalModelCopyWithImpl<$Res,
          SlackVerificationModalModel>;
  @useResult
  $Res call({String slackVerificationCode});
}

/// @nodoc
class _$SlackVerificationModalModelCopyWithImpl<$Res,
        $Val extends SlackVerificationModalModel>
    implements $SlackVerificationModalModelCopyWith<$Res> {
  _$SlackVerificationModalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slackVerificationCode = null,
  }) {
    return _then(_value.copyWith(
      slackVerificationCode: null == slackVerificationCode
          ? _value.slackVerificationCode
          : slackVerificationCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SlackVerificationModalModelCopyWith<$Res>
    implements $SlackVerificationModalModelCopyWith<$Res> {
  factory _$$_SlackVerificationModalModelCopyWith(
          _$_SlackVerificationModalModel value,
          $Res Function(_$_SlackVerificationModalModel) then) =
      __$$_SlackVerificationModalModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String slackVerificationCode});
}

/// @nodoc
class __$$_SlackVerificationModalModelCopyWithImpl<$Res>
    extends _$SlackVerificationModalModelCopyWithImpl<$Res,
        _$_SlackVerificationModalModel>
    implements _$$_SlackVerificationModalModelCopyWith<$Res> {
  __$$_SlackVerificationModalModelCopyWithImpl(
      _$_SlackVerificationModalModel _value,
      $Res Function(_$_SlackVerificationModalModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slackVerificationCode = null,
  }) {
    return _then(_$_SlackVerificationModalModel(
      slackVerificationCode: null == slackVerificationCode
          ? _value.slackVerificationCode
          : slackVerificationCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SlackVerificationModalModel implements _SlackVerificationModalModel {
  const _$_SlackVerificationModalModel({this.slackVerificationCode = ''});

  @override
  @JsonKey()
  final String slackVerificationCode;

  @override
  String toString() {
    return 'SlackVerificationModalModel(slackVerificationCode: $slackVerificationCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SlackVerificationModalModel &&
            (identical(other.slackVerificationCode, slackVerificationCode) ||
                other.slackVerificationCode == slackVerificationCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, slackVerificationCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SlackVerificationModalModelCopyWith<_$_SlackVerificationModalModel>
      get copyWith => __$$_SlackVerificationModalModelCopyWithImpl<
          _$_SlackVerificationModalModel>(this, _$identity);
}

abstract class _SlackVerificationModalModel
    implements SlackVerificationModalModel {
  const factory _SlackVerificationModalModel(
      {final String slackVerificationCode}) = _$_SlackVerificationModalModel;

  @override
  String get slackVerificationCode;
  @override
  @JsonKey(ignore: true)
  _$$_SlackVerificationModalModelCopyWith<_$_SlackVerificationModalModel>
      get copyWith => throw _privateConstructorUsedError;
}
