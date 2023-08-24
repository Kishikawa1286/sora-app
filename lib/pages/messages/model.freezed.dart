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
mixin _$MessagesPageModel {
  String? get userId => throw _privateConstructorUsedError;
  List<Message?> get messages => throw _privateConstructorUsedError;
  Timestamp? get lastMessageCreatedAt => throw _privateConstructorUsedError;
  Message? get modalMessage => throw _privateConstructorUsedError;
  List<String> get dismissedMessageIds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MessagesPageModelCopyWith<MessagesPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagesPageModelCopyWith<$Res> {
  factory $MessagesPageModelCopyWith(
          MessagesPageModel value, $Res Function(MessagesPageModel) then) =
      _$MessagesPageModelCopyWithImpl<$Res, MessagesPageModel>;
  @useResult
  $Res call(
      {String? userId,
      List<Message?> messages,
      Timestamp? lastMessageCreatedAt,
      Message? modalMessage,
      List<String> dismissedMessageIds});
}

/// @nodoc
class _$MessagesPageModelCopyWithImpl<$Res, $Val extends MessagesPageModel>
    implements $MessagesPageModelCopyWith<$Res> {
  _$MessagesPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? messages = null,
    Object? lastMessageCreatedAt = freezed,
    Object? modalMessage = freezed,
    Object? dismissedMessageIds = null,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message?>,
      lastMessageCreatedAt: freezed == lastMessageCreatedAt
          ? _value.lastMessageCreatedAt
          : lastMessageCreatedAt // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      modalMessage: freezed == modalMessage
          ? _value.modalMessage
          : modalMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      dismissedMessageIds: null == dismissedMessageIds
          ? _value.dismissedMessageIds
          : dismissedMessageIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessagesPageModelCopyWith<$Res>
    implements $MessagesPageModelCopyWith<$Res> {
  factory _$$_MessagesPageModelCopyWith(_$_MessagesPageModel value,
          $Res Function(_$_MessagesPageModel) then) =
      __$$_MessagesPageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userId,
      List<Message?> messages,
      Timestamp? lastMessageCreatedAt,
      Message? modalMessage,
      List<String> dismissedMessageIds});
}

/// @nodoc
class __$$_MessagesPageModelCopyWithImpl<$Res>
    extends _$MessagesPageModelCopyWithImpl<$Res, _$_MessagesPageModel>
    implements _$$_MessagesPageModelCopyWith<$Res> {
  __$$_MessagesPageModelCopyWithImpl(
      _$_MessagesPageModel _value, $Res Function(_$_MessagesPageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? messages = null,
    Object? lastMessageCreatedAt = freezed,
    Object? modalMessage = freezed,
    Object? dismissedMessageIds = null,
  }) {
    return _then(_$_MessagesPageModel(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message?>,
      lastMessageCreatedAt: freezed == lastMessageCreatedAt
          ? _value.lastMessageCreatedAt
          : lastMessageCreatedAt // ignore: cast_nullable_to_non_nullable
              as Timestamp?,
      modalMessage: freezed == modalMessage
          ? _value.modalMessage
          : modalMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      dismissedMessageIds: null == dismissedMessageIds
          ? _value._dismissedMessageIds
          : dismissedMessageIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_MessagesPageModel implements _MessagesPageModel {
  const _$_MessagesPageModel(
      {this.userId,
      final List<Message?> messages = const [],
      this.lastMessageCreatedAt,
      this.modalMessage,
      final List<String> dismissedMessageIds = const []})
      : _messages = messages,
        _dismissedMessageIds = dismissedMessageIds;

  @override
  final String? userId;
  final List<Message?> _messages;
  @override
  @JsonKey()
  List<Message?> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final Timestamp? lastMessageCreatedAt;
  @override
  final Message? modalMessage;
  final List<String> _dismissedMessageIds;
  @override
  @JsonKey()
  List<String> get dismissedMessageIds {
    if (_dismissedMessageIds is EqualUnmodifiableListView)
      return _dismissedMessageIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_dismissedMessageIds);
  }

  @override
  String toString() {
    return 'MessagesPageModel(userId: $userId, messages: $messages, lastMessageCreatedAt: $lastMessageCreatedAt, modalMessage: $modalMessage, dismissedMessageIds: $dismissedMessageIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessagesPageModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.lastMessageCreatedAt, lastMessageCreatedAt) ||
                other.lastMessageCreatedAt == lastMessageCreatedAt) &&
            (identical(other.modalMessage, modalMessage) ||
                other.modalMessage == modalMessage) &&
            const DeepCollectionEquality()
                .equals(other._dismissedMessageIds, _dismissedMessageIds));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      const DeepCollectionEquality().hash(_messages),
      lastMessageCreatedAt,
      modalMessage,
      const DeepCollectionEquality().hash(_dismissedMessageIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessagesPageModelCopyWith<_$_MessagesPageModel> get copyWith =>
      __$$_MessagesPageModelCopyWithImpl<_$_MessagesPageModel>(
          this, _$identity);
}

abstract class _MessagesPageModel implements MessagesPageModel {
  const factory _MessagesPageModel(
      {final String? userId,
      final List<Message?> messages,
      final Timestamp? lastMessageCreatedAt,
      final Message? modalMessage,
      final List<String> dismissedMessageIds}) = _$_MessagesPageModel;

  @override
  String? get userId;
  @override
  List<Message?> get messages;
  @override
  Timestamp? get lastMessageCreatedAt;
  @override
  Message? get modalMessage;
  @override
  List<String> get dismissedMessageIds;
  @override
  @JsonKey(ignore: true)
  _$$_MessagesPageModelCopyWith<_$_MessagesPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
