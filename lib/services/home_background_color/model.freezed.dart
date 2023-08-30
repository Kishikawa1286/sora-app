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
mixin _$HomeBackgroundColorModel {
  double get offset => throw _privateConstructorUsedError;
  Color get backgroundColor => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeBackgroundColorModelCopyWith<HomeBackgroundColorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeBackgroundColorModelCopyWith<$Res> {
  factory $HomeBackgroundColorModelCopyWith(HomeBackgroundColorModel value,
          $Res Function(HomeBackgroundColorModel) then) =
      _$HomeBackgroundColorModelCopyWithImpl<$Res, HomeBackgroundColorModel>;
  @useResult
  $Res call({double offset, Color backgroundColor});
}

/// @nodoc
class _$HomeBackgroundColorModelCopyWithImpl<$Res,
        $Val extends HomeBackgroundColorModel>
    implements $HomeBackgroundColorModelCopyWith<$Res> {
  _$HomeBackgroundColorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? backgroundColor = null,
  }) {
    return _then(_value.copyWith(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as double,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeBackgroundColorModelCopyWith<$Res>
    implements $HomeBackgroundColorModelCopyWith<$Res> {
  factory _$$_HomeBackgroundColorModelCopyWith(
          _$_HomeBackgroundColorModel value,
          $Res Function(_$_HomeBackgroundColorModel) then) =
      __$$_HomeBackgroundColorModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double offset, Color backgroundColor});
}

/// @nodoc
class __$$_HomeBackgroundColorModelCopyWithImpl<$Res>
    extends _$HomeBackgroundColorModelCopyWithImpl<$Res,
        _$_HomeBackgroundColorModel>
    implements _$$_HomeBackgroundColorModelCopyWith<$Res> {
  __$$_HomeBackgroundColorModelCopyWithImpl(_$_HomeBackgroundColorModel _value,
      $Res Function(_$_HomeBackgroundColorModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? backgroundColor = null,
  }) {
    return _then(_$_HomeBackgroundColorModel(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as double,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$_HomeBackgroundColorModel implements _HomeBackgroundColorModel {
  const _$_HomeBackgroundColorModel(
      {this.offset = 0, this.backgroundColor = Colors.white});

  @override
  @JsonKey()
  final double offset;
  @override
  @JsonKey()
  final Color backgroundColor;

  @override
  String toString() {
    return 'HomeBackgroundColorModel(offset: $offset, backgroundColor: $backgroundColor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeBackgroundColorModel &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, offset, backgroundColor);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeBackgroundColorModelCopyWith<_$_HomeBackgroundColorModel>
      get copyWith => __$$_HomeBackgroundColorModelCopyWithImpl<
          _$_HomeBackgroundColorModel>(this, _$identity);
}

abstract class _HomeBackgroundColorModel implements HomeBackgroundColorModel {
  const factory _HomeBackgroundColorModel(
      {final double offset,
      final Color backgroundColor}) = _$_HomeBackgroundColorModel;

  @override
  double get offset;
  @override
  Color get backgroundColor;
  @override
  @JsonKey(ignore: true)
  _$$_HomeBackgroundColorModelCopyWith<_$_HomeBackgroundColorModel>
      get copyWith => throw _privateConstructorUsedError;
}
