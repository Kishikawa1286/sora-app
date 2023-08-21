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
mixin _$AuthBuilderModel {
  bool? get authenticated => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthBuilderModelCopyWith<AuthBuilderModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthBuilderModelCopyWith<$Res> {
  factory $AuthBuilderModelCopyWith(
          AuthBuilderModel value, $Res Function(AuthBuilderModel) then) =
      _$AuthBuilderModelCopyWithImpl<$Res, AuthBuilderModel>;
  @useResult
  $Res call({bool? authenticated});
}

/// @nodoc
class _$AuthBuilderModelCopyWithImpl<$Res, $Val extends AuthBuilderModel>
    implements $AuthBuilderModelCopyWith<$Res> {
  _$AuthBuilderModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticated = freezed,
  }) {
    return _then(_value.copyWith(
      authenticated: freezed == authenticated
          ? _value.authenticated
          : authenticated // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthBuilderModelCopyWith<$Res>
    implements $AuthBuilderModelCopyWith<$Res> {
  factory _$$_AuthBuilderModelCopyWith(
          _$_AuthBuilderModel value, $Res Function(_$_AuthBuilderModel) then) =
      __$$_AuthBuilderModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? authenticated});
}

/// @nodoc
class __$$_AuthBuilderModelCopyWithImpl<$Res>
    extends _$AuthBuilderModelCopyWithImpl<$Res, _$_AuthBuilderModel>
    implements _$$_AuthBuilderModelCopyWith<$Res> {
  __$$_AuthBuilderModelCopyWithImpl(
      _$_AuthBuilderModel _value, $Res Function(_$_AuthBuilderModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? authenticated = freezed,
  }) {
    return _then(_$_AuthBuilderModel(
      authenticated: freezed == authenticated
          ? _value.authenticated
          : authenticated // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_AuthBuilderModel implements _AuthBuilderModel {
  const _$_AuthBuilderModel({this.authenticated = null});

  @override
  @JsonKey()
  final bool? authenticated;

  @override
  String toString() {
    return 'AuthBuilderModel(authenticated: $authenticated)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthBuilderModel &&
            (identical(other.authenticated, authenticated) ||
                other.authenticated == authenticated));
  }

  @override
  int get hashCode => Object.hash(runtimeType, authenticated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthBuilderModelCopyWith<_$_AuthBuilderModel> get copyWith =>
      __$$_AuthBuilderModelCopyWithImpl<_$_AuthBuilderModel>(this, _$identity);
}

abstract class _AuthBuilderModel implements AuthBuilderModel {
  const factory _AuthBuilderModel({final bool? authenticated}) =
      _$_AuthBuilderModel;

  @override
  bool? get authenticated;
  @override
  @JsonKey(ignore: true)
  _$$_AuthBuilderModelCopyWith<_$_AuthBuilderModel> get copyWith =>
      throw _privateConstructorUsedError;
}
