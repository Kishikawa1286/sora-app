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
mixin _$ReplyModalModel {
  String get messageId => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReplyModalModelCopyWith<ReplyModalModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReplyModalModelCopyWith<$Res> {
  factory $ReplyModalModelCopyWith(
          ReplyModalModel value, $Res Function(ReplyModalModel) then) =
      _$ReplyModalModelCopyWithImpl<$Res, ReplyModalModel>;
  @useResult
  $Res call({String messageId, String text});
}

/// @nodoc
class _$ReplyModalModelCopyWithImpl<$Res, $Val extends ReplyModalModel>
    implements $ReplyModalModelCopyWith<$Res> {
  _$ReplyModalModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
    Object? text = null,
  }) {
    return _then(_value.copyWith(
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReplyModalModelCopyWith<$Res>
    implements $ReplyModalModelCopyWith<$Res> {
  factory _$$_ReplyModalModelCopyWith(
          _$_ReplyModalModel value, $Res Function(_$_ReplyModalModel) then) =
      __$$_ReplyModalModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String messageId, String text});
}

/// @nodoc
class __$$_ReplyModalModelCopyWithImpl<$Res>
    extends _$ReplyModalModelCopyWithImpl<$Res, _$_ReplyModalModel>
    implements _$$_ReplyModalModelCopyWith<$Res> {
  __$$_ReplyModalModelCopyWithImpl(
      _$_ReplyModalModel _value, $Res Function(_$_ReplyModalModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messageId = null,
    Object? text = null,
  }) {
    return _then(_$_ReplyModalModel(
      messageId: null == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ReplyModalModel implements _ReplyModalModel {
  const _$_ReplyModalModel({this.messageId = '', this.text = ''});

  @override
  @JsonKey()
  final String messageId;
  @override
  @JsonKey()
  final String text;

  @override
  String toString() {
    return 'ReplyModalModel(messageId: $messageId, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReplyModalModel &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, messageId, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReplyModalModelCopyWith<_$_ReplyModalModel> get copyWith =>
      __$$_ReplyModalModelCopyWithImpl<_$_ReplyModalModel>(this, _$identity);
}

abstract class _ReplyModalModel implements ReplyModalModel {
  const factory _ReplyModalModel({final String messageId, final String text}) =
      _$_ReplyModalModel;

  @override
  String get messageId;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_ReplyModalModelCopyWith<_$_ReplyModalModel> get copyWith =>
      throw _privateConstructorUsedError;
}
