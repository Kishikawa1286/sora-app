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
mixin _$HomeTabModel {
  int get tab => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  int? get pendingTab => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeTabModelCopyWith<HomeTabModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeTabModelCopyWith<$Res> {
  factory $HomeTabModelCopyWith(
          HomeTabModel value, $Res Function(HomeTabModel) then) =
      _$HomeTabModelCopyWithImpl<$Res, HomeTabModel>;
  @useResult
  $Res call({int tab, bool isLoading, int? pendingTab});
}

/// @nodoc
class _$HomeTabModelCopyWithImpl<$Res, $Val extends HomeTabModel>
    implements $HomeTabModelCopyWith<$Res> {
  _$HomeTabModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tab = null,
    Object? isLoading = null,
    Object? pendingTab = freezed,
  }) {
    return _then(_value.copyWith(
      tab: null == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      pendingTab: freezed == pendingTab
          ? _value.pendingTab
          : pendingTab // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeTabModelCopyWith<$Res>
    implements $HomeTabModelCopyWith<$Res> {
  factory _$$_HomeTabModelCopyWith(
          _$_HomeTabModel value, $Res Function(_$_HomeTabModel) then) =
      __$$_HomeTabModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int tab, bool isLoading, int? pendingTab});
}

/// @nodoc
class __$$_HomeTabModelCopyWithImpl<$Res>
    extends _$HomeTabModelCopyWithImpl<$Res, _$_HomeTabModel>
    implements _$$_HomeTabModelCopyWith<$Res> {
  __$$_HomeTabModelCopyWithImpl(
      _$_HomeTabModel _value, $Res Function(_$_HomeTabModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tab = null,
    Object? isLoading = null,
    Object? pendingTab = freezed,
  }) {
    return _then(_$_HomeTabModel(
      tab: null == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      pendingTab: freezed == pendingTab
          ? _value.pendingTab
          : pendingTab // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_HomeTabModel implements _HomeTabModel {
  const _$_HomeTabModel(
      {this.tab = 0, this.isLoading = false, this.pendingTab});

  @override
  @JsonKey()
  final int tab;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  final int? pendingTab;

  @override
  String toString() {
    return 'HomeTabModel(tab: $tab, isLoading: $isLoading, pendingTab: $pendingTab)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeTabModel &&
            (identical(other.tab, tab) || other.tab == tab) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.pendingTab, pendingTab) ||
                other.pendingTab == pendingTab));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tab, isLoading, pendingTab);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeTabModelCopyWith<_$_HomeTabModel> get copyWith =>
      __$$_HomeTabModelCopyWithImpl<_$_HomeTabModel>(this, _$identity);
}

abstract class _HomeTabModel implements HomeTabModel {
  const factory _HomeTabModel(
      {final int tab,
      final bool isLoading,
      final int? pendingTab}) = _$_HomeTabModel;

  @override
  int get tab;
  @override
  bool get isLoading;
  @override
  int? get pendingTab;
  @override
  @JsonKey(ignore: true)
  _$$_HomeTabModelCopyWith<_$_HomeTabModel> get copyWith =>
      throw _privateConstructorUsedError;
}
