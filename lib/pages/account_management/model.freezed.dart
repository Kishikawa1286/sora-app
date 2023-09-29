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
mixin _$AccountManagementPageModel {
  List<SlackUser?> get slackUsers => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AccountManagementPageModelCopyWith<AccountManagementPageModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountManagementPageModelCopyWith<$Res> {
  factory $AccountManagementPageModelCopyWith(AccountManagementPageModel value,
          $Res Function(AccountManagementPageModel) then) =
      _$AccountManagementPageModelCopyWithImpl<$Res,
          AccountManagementPageModel>;
  @useResult
  $Res call({List<SlackUser?> slackUsers});
}

/// @nodoc
class _$AccountManagementPageModelCopyWithImpl<$Res,
        $Val extends AccountManagementPageModel>
    implements $AccountManagementPageModelCopyWith<$Res> {
  _$AccountManagementPageModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_AccountManagementPageModelCopyWith<$Res>
    implements $AccountManagementPageModelCopyWith<$Res> {
  factory _$$_AccountManagementPageModelCopyWith(
          _$_AccountManagementPageModel value,
          $Res Function(_$_AccountManagementPageModel) then) =
      __$$_AccountManagementPageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SlackUser?> slackUsers});
}

/// @nodoc
class __$$_AccountManagementPageModelCopyWithImpl<$Res>
    extends _$AccountManagementPageModelCopyWithImpl<$Res,
        _$_AccountManagementPageModel>
    implements _$$_AccountManagementPageModelCopyWith<$Res> {
  __$$_AccountManagementPageModelCopyWithImpl(
      _$_AccountManagementPageModel _value,
      $Res Function(_$_AccountManagementPageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? slackUsers = null,
  }) {
    return _then(_$_AccountManagementPageModel(
      slackUsers: null == slackUsers
          ? _value._slackUsers
          : slackUsers // ignore: cast_nullable_to_non_nullable
              as List<SlackUser?>,
    ));
  }
}

/// @nodoc

class _$_AccountManagementPageModel implements _AccountManagementPageModel {
  const _$_AccountManagementPageModel(
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
    return 'AccountManagementPageModel(slackUsers: $slackUsers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountManagementPageModel &&
            const DeepCollectionEquality()
                .equals(other._slackUsers, _slackUsers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_slackUsers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountManagementPageModelCopyWith<_$_AccountManagementPageModel>
      get copyWith => __$$_AccountManagementPageModelCopyWithImpl<
          _$_AccountManagementPageModel>(this, _$identity);
}

abstract class _AccountManagementPageModel
    implements AccountManagementPageModel {
  const factory _AccountManagementPageModel(
      {final List<SlackUser?> slackUsers}) = _$_AccountManagementPageModel;

  @override
  List<SlackUser?> get slackUsers;
  @override
  @JsonKey(ignore: true)
  _$$_AccountManagementPageModelCopyWith<_$_AccountManagementPageModel>
      get copyWith => throw _privateConstructorUsedError;
}
