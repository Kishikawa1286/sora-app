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
mixin _$CardMessagesPageModel {
  String? get userId => throw _privateConstructorUsedError;
  List<Message?> get messages => throw _privateConstructorUsedError;
  Timestamp? get lastMessageCreatedAt => throw _privateConstructorUsedError;
  double get swipeOffset => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CardMessagesPageModelCopyWith<CardMessagesPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardMessagesPageModelCopyWith<$Res> {
  factory $CardMessagesPageModelCopyWith(CardMessagesPageModel value,
          $Res Function(CardMessagesPageModel) then) =
      _$CardMessagesPageModelCopyWithImpl<$Res, CardMessagesPageModel>;
  @useResult
  $Res call(
      {String? userId,
      List<Message?> messages,
      Timestamp? lastMessageCreatedAt,
      double swipeOffset});
}

/// @nodoc
class _$CardMessagesPageModelCopyWithImpl<$Res,
        $Val extends CardMessagesPageModel>
    implements $CardMessagesPageModelCopyWith<$Res> {
  _$CardMessagesPageModelCopyWithImpl(this._value, this._then);

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
    Object? swipeOffset = null,
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
      swipeOffset: null == swipeOffset
          ? _value.swipeOffset
          : swipeOffset // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CardMessagesPageModelCopyWith<$Res>
    implements $CardMessagesPageModelCopyWith<$Res> {
  factory _$$_CardMessagesPageModelCopyWith(_$_CardMessagesPageModel value,
          $Res Function(_$_CardMessagesPageModel) then) =
      __$$_CardMessagesPageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userId,
      List<Message?> messages,
      Timestamp? lastMessageCreatedAt,
      double swipeOffset});
}

/// @nodoc
class __$$_CardMessagesPageModelCopyWithImpl<$Res>
    extends _$CardMessagesPageModelCopyWithImpl<$Res, _$_CardMessagesPageModel>
    implements _$$_CardMessagesPageModelCopyWith<$Res> {
  __$$_CardMessagesPageModelCopyWithImpl(_$_CardMessagesPageModel _value,
      $Res Function(_$_CardMessagesPageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? messages = null,
    Object? lastMessageCreatedAt = freezed,
    Object? swipeOffset = null,
  }) {
    return _then(_$_CardMessagesPageModel(
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
      swipeOffset: null == swipeOffset
          ? _value.swipeOffset
          : swipeOffset // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_CardMessagesPageModel implements _CardMessagesPageModel {
  const _$_CardMessagesPageModel(
      {this.userId,
      final List<Message?> messages = const [],
      this.lastMessageCreatedAt,
      this.swipeOffset = 0.0})
      : _messages = messages;

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
  @JsonKey()
  final double swipeOffset;

  @override
  String toString() {
    return 'CardMessagesPageModel(userId: $userId, messages: $messages, lastMessageCreatedAt: $lastMessageCreatedAt, swipeOffset: $swipeOffset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CardMessagesPageModel &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.lastMessageCreatedAt, lastMessageCreatedAt) ||
                other.lastMessageCreatedAt == lastMessageCreatedAt) &&
            (identical(other.swipeOffset, swipeOffset) ||
                other.swipeOffset == swipeOffset));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      const DeepCollectionEquality().hash(_messages),
      lastMessageCreatedAt,
      swipeOffset);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CardMessagesPageModelCopyWith<_$_CardMessagesPageModel> get copyWith =>
      __$$_CardMessagesPageModelCopyWithImpl<_$_CardMessagesPageModel>(
          this, _$identity);
}

abstract class _CardMessagesPageModel implements CardMessagesPageModel {
  const factory _CardMessagesPageModel(
      {final String? userId,
      final List<Message?> messages,
      final Timestamp? lastMessageCreatedAt,
      final double swipeOffset}) = _$_CardMessagesPageModel;

  @override
  String? get userId;
  @override
  List<Message?> get messages;
  @override
  Timestamp? get lastMessageCreatedAt;
  @override
  double get swipeOffset;
  @override
  @JsonKey(ignore: true)
  _$$_CardMessagesPageModelCopyWith<_$_CardMessagesPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
