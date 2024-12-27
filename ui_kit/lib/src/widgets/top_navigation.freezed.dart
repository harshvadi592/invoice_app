// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_navigation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TopNavigationModel {
  TopNavigationLeftAccessoryModel? get leftAccessory =>
      throw _privateConstructorUsedError;
  ColorPointer? get backgroundColor => throw _privateConstructorUsedError;

  /// Create a copy of TopNavigationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopNavigationModelCopyWith<TopNavigationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopNavigationModelCopyWith<$Res> {
  factory $TopNavigationModelCopyWith(
          TopNavigationModel value, $Res Function(TopNavigationModel) then) =
      _$TopNavigationModelCopyWithImpl<$Res, TopNavigationModel>;
  @useResult
  $Res call(
      {TopNavigationLeftAccessoryModel? leftAccessory,
      ColorPointer? backgroundColor});
}

/// @nodoc
class _$TopNavigationModelCopyWithImpl<$Res, $Val extends TopNavigationModel>
    implements $TopNavigationModelCopyWith<$Res> {
  _$TopNavigationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopNavigationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leftAccessory = freezed,
    Object? backgroundColor = freezed,
  }) {
    return _then(_value.copyWith(
      leftAccessory: freezed == leftAccessory
          ? _value.leftAccessory
          : leftAccessory // ignore: cast_nullable_to_non_nullable
              as TopNavigationLeftAccessoryModel?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as ColorPointer?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TopNavigationModelImplCopyWith<$Res>
    implements $TopNavigationModelCopyWith<$Res> {
  factory _$$TopNavigationModelImplCopyWith(_$TopNavigationModelImpl value,
          $Res Function(_$TopNavigationModelImpl) then) =
      __$$TopNavigationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TopNavigationLeftAccessoryModel? leftAccessory,
      ColorPointer? backgroundColor});
}

/// @nodoc
class __$$TopNavigationModelImplCopyWithImpl<$Res>
    extends _$TopNavigationModelCopyWithImpl<$Res, _$TopNavigationModelImpl>
    implements _$$TopNavigationModelImplCopyWith<$Res> {
  __$$TopNavigationModelImplCopyWithImpl(_$TopNavigationModelImpl _value,
      $Res Function(_$TopNavigationModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopNavigationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? leftAccessory = freezed,
    Object? backgroundColor = freezed,
  }) {
    return _then(_$TopNavigationModelImpl(
      leftAccessory: freezed == leftAccessory
          ? _value.leftAccessory
          : leftAccessory // ignore: cast_nullable_to_non_nullable
              as TopNavigationLeftAccessoryModel?,
      backgroundColor: freezed == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as ColorPointer?,
    ));
  }
}

/// @nodoc

class _$TopNavigationModelImpl implements _TopNavigationModel {
  const _$TopNavigationModelImpl({this.leftAccessory, this.backgroundColor});

  @override
  final TopNavigationLeftAccessoryModel? leftAccessory;
  @override
  final ColorPointer? backgroundColor;

  @override
  String toString() {
    return 'TopNavigationModel(leftAccessory: $leftAccessory, backgroundColor: $backgroundColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopNavigationModelImpl &&
            (identical(other.leftAccessory, leftAccessory) ||
                other.leftAccessory == leftAccessory) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, leftAccessory, backgroundColor);

  /// Create a copy of TopNavigationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopNavigationModelImplCopyWith<_$TopNavigationModelImpl> get copyWith =>
      __$$TopNavigationModelImplCopyWithImpl<_$TopNavigationModelImpl>(
          this, _$identity);
}

abstract class _TopNavigationModel implements TopNavigationModel {
  const factory _TopNavigationModel(
      {final TopNavigationLeftAccessoryModel? leftAccessory,
      final ColorPointer? backgroundColor}) = _$TopNavigationModelImpl;

  @override
  TopNavigationLeftAccessoryModel? get leftAccessory;
  @override
  ColorPointer? get backgroundColor;

  /// Create a copy of TopNavigationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopNavigationModelImplCopyWith<_$TopNavigationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
