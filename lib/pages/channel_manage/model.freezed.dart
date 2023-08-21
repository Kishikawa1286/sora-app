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
mixin _$ChannelManagePageModel {
  List<SlackUser?> get slackUsers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChannelManagePageModelCopyWith<ChannelManagePageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelManagePageModelCopyWith<$Res> {
  factory $ChannelManagePageModelCopyWith(ChannelManagePageModel value,
          $Res Function(ChannelManagePageModel) then) =
      _$ChannelManagePageModelCopyWithImpl<$Res, ChannelManagePageModel>;
  @useResult
  $Res call({List<SlackUser?> slackUsers});
}

/// @nodoc
class _$ChannelManagePageModelCopyWithImpl<$Res,
        $Val extends ChannelManagePageModel>
    implements $ChannelManagePageModelCopyWith<$Res> {
  _$ChannelManagePageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slackUsers = null,
  }) {
    return _then(_value.copyWith(
      slackUsers: null == slackUsers
          ? _value.slackUsers
          : slackUsers // ignore: cast_nullable_to_non_nullable
              as List<SlackUser?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChannelManagePageModelCopyWith<$Res>
    implements $ChannelManagePageModelCopyWith<$Res> {
  factory _$$_ChannelManagePageModelCopyWith(_$_ChannelManagePageModel value,
          $Res Function(_$_ChannelManagePageModel) then) =
      __$$_ChannelManagePageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SlackUser?> slackUsers});
}

/// @nodoc
class __$$_ChannelManagePageModelCopyWithImpl<$Res>
    extends _$ChannelManagePageModelCopyWithImpl<$Res,
        _$_ChannelManagePageModel>
    implements _$$_ChannelManagePageModelCopyWith<$Res> {
  __$$_ChannelManagePageModelCopyWithImpl(_$_ChannelManagePageModel _value,
      $Res Function(_$_ChannelManagePageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slackUsers = null,
  }) {
    return _then(_$_ChannelManagePageModel(
      slackUsers: null == slackUsers
          ? _value._slackUsers
          : slackUsers // ignore: cast_nullable_to_non_nullable
              as List<SlackUser?>,
    ));
  }
}

/// @nodoc

class _$_ChannelManagePageModel implements _ChannelManagePageModel {
  const _$_ChannelManagePageModel(
      {final List<SlackUser?> slackUsers = const []})
      : _slackUsers = slackUsers;

  final List<SlackUser?> _slackUsers;
  @override
  @JsonKey()
  List<SlackUser?> get slackUsers {
    if (_slackUsers is EqualUnmodifiableListView) return _slackUsers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_slackUsers);
  }

  @override
  String toString() {
    return 'ChannelManagePageModel(slackUsers: $slackUsers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChannelManagePageModel &&
            const DeepCollectionEquality()
                .equals(other._slackUsers, _slackUsers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_slackUsers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChannelManagePageModelCopyWith<_$_ChannelManagePageModel> get copyWith =>
      __$$_ChannelManagePageModelCopyWithImpl<_$_ChannelManagePageModel>(
          this, _$identity);
}

abstract class _ChannelManagePageModel implements ChannelManagePageModel {
  const factory _ChannelManagePageModel({final List<SlackUser?> slackUsers}) =
      _$_ChannelManagePageModel;

  @override
  List<SlackUser?> get slackUsers;
  @override
  @JsonKey(ignore: true)
  _$$_ChannelManagePageModelCopyWith<_$_ChannelManagePageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
