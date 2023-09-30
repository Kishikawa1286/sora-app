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
mixin _$MessageDetailPageModel {
  String? get userId => throw _privateConstructorUsedError;
  String? get messageId => throw _privateConstructorUsedError;
  Message? get message => throw _privateConstructorUsedError;
  SlackMessage? get slackMessage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessageDetailPageModelCopyWith<MessageDetailPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageDetailPageModelCopyWith<$Res> {
  factory $MessageDetailPageModelCopyWith(MessageDetailPageModel value,
          $Res Function(MessageDetailPageModel) then) =
      _$MessageDetailPageModelCopyWithImpl<$Res, MessageDetailPageModel>;
  @useResult
  $Res call(
      {String? userId,
      String? messageId,
      Message? message,
      SlackMessage? slackMessage});
}

/// @nodoc
class _$MessageDetailPageModelCopyWithImpl<$Res,
        $Val extends MessageDetailPageModel>
    implements $MessageDetailPageModelCopyWith<$Res> {
  _$MessageDetailPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? messageId = freezed,
    Object? message = freezed,
    Object? slackMessage = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message?,
      slackMessage: freezed == slackMessage
          ? _value.slackMessage
          : slackMessage // ignore: cast_nullable_to_non_nullable
              as SlackMessage?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageDetailPageModelCopyWith<$Res>
    implements $MessageDetailPageModelCopyWith<$Res> {
  factory _$$_MessageDetailPageModelCopyWith(_$_MessageDetailPageModel value,
          $Res Function(_$_MessageDetailPageModel) then) =
      __$$_MessageDetailPageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userId,
      String? messageId,
      Message? message,
      SlackMessage? slackMessage});
}

/// @nodoc
class __$$_MessageDetailPageModelCopyWithImpl<$Res>
    extends _$MessageDetailPageModelCopyWithImpl<$Res,
        _$_MessageDetailPageModel>
    implements _$$_MessageDetailPageModelCopyWith<$Res> {
  __$$_MessageDetailPageModelCopyWithImpl(_$_MessageDetailPageModel _value,
      $Res Function(_$_MessageDetailPageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? messageId = freezed,
    Object? message = freezed,
    Object? slackMessage = freezed,
  }) {
    return _then(_$_MessageDetailPageModel(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as Message?,
      slackMessage: freezed == slackMessage
          ? _value.slackMessage
          : slackMessage // ignore: cast_nullable_to_non_nullable
              as SlackMessage?,
    ));
  }
}

/// @nodoc

class _$_MessageDetailPageModel implements _MessageDetailPageModel {
  const _$_MessageDetailPageModel(
      {this.userId,
      this.messageId,
      this.message = null,
      this.slackMessage = null});

  @override
  final String? userId;
  @override
  final String? messageId;
  @override
  @JsonKey()
  final Message? message;
  @override
  @JsonKey()
  final SlackMessage? slackMessage;

  @override
  String toString() {
    return 'MessageDetailPageModel(userId: $userId, messageId: $messageId, message: $message, slackMessage: $slackMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageDetailPageModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.slackMessage, slackMessage) ||
                other.slackMessage == slackMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, userId, messageId, message, slackMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageDetailPageModelCopyWith<_$_MessageDetailPageModel> get copyWith =>
      __$$_MessageDetailPageModelCopyWithImpl<_$_MessageDetailPageModel>(
          this, _$identity);
}

abstract class _MessageDetailPageModel implements MessageDetailPageModel {
  const factory _MessageDetailPageModel(
      {final String? userId,
      final String? messageId,
      final Message? message,
      final SlackMessage? slackMessage}) = _$_MessageDetailPageModel;

  @override
  String? get userId;
  @override
  String? get messageId;
  @override
  Message? get message;
  @override
  SlackMessage? get slackMessage;
  @override
  @JsonKey(ignore: true)
  _$$_MessageDetailPageModelCopyWith<_$_MessageDetailPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
