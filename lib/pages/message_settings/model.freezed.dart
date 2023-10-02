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
mixin _$MessageSettingsPageModel {
  String get scheduleAdjustmentUrl => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageSettingsPageModelCopyWith<MessageSettingsPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageSettingsPageModelCopyWith<$Res> {
  factory $MessageSettingsPageModelCopyWith(MessageSettingsPageModel value,
          $Res Function(MessageSettingsPageModel) then) =
      _$MessageSettingsPageModelCopyWithImpl<$Res, MessageSettingsPageModel>;
  @useResult
  $Res call({String scheduleAdjustmentUrl});
}

/// @nodoc
class _$MessageSettingsPageModelCopyWithImpl<$Res,
        $Val extends MessageSettingsPageModel>
    implements $MessageSettingsPageModelCopyWith<$Res> {
  _$MessageSettingsPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleAdjustmentUrl = null,
  }) {
    return _then(_value.copyWith(
      scheduleAdjustmentUrl: null == scheduleAdjustmentUrl
          ? _value.scheduleAdjustmentUrl
          : scheduleAdjustmentUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageSettingsPageModelCopyWith<$Res>
    implements $MessageSettingsPageModelCopyWith<$Res> {
  factory _$$_MessageSettingsPageModelCopyWith(
          _$_MessageSettingsPageModel value,
          $Res Function(_$_MessageSettingsPageModel) then) =
      __$$_MessageSettingsPageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String scheduleAdjustmentUrl});
}

/// @nodoc
class __$$_MessageSettingsPageModelCopyWithImpl<$Res>
    extends _$MessageSettingsPageModelCopyWithImpl<$Res,
        _$_MessageSettingsPageModel>
    implements _$$_MessageSettingsPageModelCopyWith<$Res> {
  __$$_MessageSettingsPageModelCopyWithImpl(_$_MessageSettingsPageModel _value,
      $Res Function(_$_MessageSettingsPageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? scheduleAdjustmentUrl = null,
  }) {
    return _then(_$_MessageSettingsPageModel(
      scheduleAdjustmentUrl: null == scheduleAdjustmentUrl
          ? _value.scheduleAdjustmentUrl
          : scheduleAdjustmentUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MessageSettingsPageModel implements _MessageSettingsPageModel {
  const _$_MessageSettingsPageModel({this.scheduleAdjustmentUrl = ''});

  @override
  @JsonKey()
  final String scheduleAdjustmentUrl;

  @override
  String toString() {
    return 'MessageSettingsPageModel(scheduleAdjustmentUrl: $scheduleAdjustmentUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageSettingsPageModel &&
            (identical(other.scheduleAdjustmentUrl, scheduleAdjustmentUrl) ||
                other.scheduleAdjustmentUrl == scheduleAdjustmentUrl));
  }

  @override
  int get hashCode => Object.hash(runtimeType, scheduleAdjustmentUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageSettingsPageModelCopyWith<_$_MessageSettingsPageModel>
      get copyWith => __$$_MessageSettingsPageModelCopyWithImpl<
          _$_MessageSettingsPageModel>(this, _$identity);
}

abstract class _MessageSettingsPageModel implements MessageSettingsPageModel {
  const factory _MessageSettingsPageModel(
      {final String scheduleAdjustmentUrl}) = _$_MessageSettingsPageModel;

  @override
  String get scheduleAdjustmentUrl;
  @override
  @JsonKey(ignore: true)
  _$$_MessageSettingsPageModelCopyWith<_$_MessageSettingsPageModel>
      get copyWith => throw _privateConstructorUsedError;
}
