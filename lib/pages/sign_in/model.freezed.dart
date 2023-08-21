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
mixin _$SignInPageModel {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get errorMessage => throw _privateConstructorUsedError;
  bool get authenticated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInPageModelCopyWith<SignInPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInPageModelCopyWith<$Res> {
  factory $SignInPageModelCopyWith(
          SignInPageModel value, $Res Function(SignInPageModel) then) =
      _$SignInPageModelCopyWithImpl<$Res, SignInPageModel>;
  @useResult
  $Res call(
      {String email, String password, String errorMessage, bool authenticated});
}

/// @nodoc
class _$SignInPageModelCopyWithImpl<$Res, $Val extends SignInPageModel>
    implements $SignInPageModelCopyWith<$Res> {
  _$SignInPageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? errorMessage = null,
    Object? authenticated = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      authenticated: null == authenticated
          ? _value.authenticated
          : authenticated // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignInPageModelCopyWith<$Res>
    implements $SignInPageModelCopyWith<$Res> {
  factory _$$_SignInPageModelCopyWith(
          _$_SignInPageModel value, $Res Function(_$_SignInPageModel) then) =
      __$$_SignInPageModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String email, String password, String errorMessage, bool authenticated});
}

/// @nodoc
class __$$_SignInPageModelCopyWithImpl<$Res>
    extends _$SignInPageModelCopyWithImpl<$Res, _$_SignInPageModel>
    implements _$$_SignInPageModelCopyWith<$Res> {
  __$$_SignInPageModelCopyWithImpl(
      _$_SignInPageModel _value, $Res Function(_$_SignInPageModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? errorMessage = null,
    Object? authenticated = null,
  }) {
    return _then(_$_SignInPageModel(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
      authenticated: null == authenticated
          ? _value.authenticated
          : authenticated // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_SignInPageModel implements _SignInPageModel {
  const _$_SignInPageModel(
      {this.email = '',
      this.password = '',
      this.errorMessage = '',
      this.authenticated = false});

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String password;
  @override
  @JsonKey()
  final String errorMessage;
  @override
  @JsonKey()
  final bool authenticated;

  @override
  String toString() {
    return 'SignInPageModel(email: $email, password: $password, errorMessage: $errorMessage, authenticated: $authenticated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInPageModel &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.authenticated, authenticated) ||
                other.authenticated == authenticated));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, errorMessage, authenticated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInPageModelCopyWith<_$_SignInPageModel> get copyWith =>
      __$$_SignInPageModelCopyWithImpl<_$_SignInPageModel>(this, _$identity);
}

abstract class _SignInPageModel implements SignInPageModel {
  const factory _SignInPageModel(
      {final String email,
      final String password,
      final String errorMessage,
      final bool authenticated}) = _$_SignInPageModel;

  @override
  String get email;
  @override
  String get password;
  @override
  String get errorMessage;
  @override
  bool get authenticated;
  @override
  @JsonKey(ignore: true)
  _$$_SignInPageModelCopyWith<_$_SignInPageModel> get copyWith =>
      throw _privateConstructorUsedError;
}
