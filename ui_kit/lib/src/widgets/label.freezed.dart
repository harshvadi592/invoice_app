// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'label.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LabelModel {
  String get text => throw _privateConstructorUsedError;
  TextStylePointer get textStyle => throw _privateConstructorUsedError;
  ColorPointer get color => throw _privateConstructorUsedError;

  /// Create a copy of LabelModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LabelModelCopyWith<LabelModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LabelModelCopyWith<$Res> {
  factory $LabelModelCopyWith(
          LabelModel value, $Res Function(LabelModel) then) =
      _$LabelModelCopyWithImpl<$Res, LabelModel>;
  @useResult
  $Res call({String text, TextStylePointer textStyle, ColorPointer color});
}

/// @nodoc
class _$LabelModelCopyWithImpl<$Res, $Val extends LabelModel>
    implements $LabelModelCopyWith<$Res> {
  _$LabelModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LabelModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? textStyle = null,
    Object? color = null,
  }) {
    return _then(_value.copyWith(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      textStyle: null == textStyle
          ? _value.textStyle
          : textStyle // ignore: cast_nullable_to_non_nullable
              as TextStylePointer,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ColorPointer,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LabelModelImplCopyWith<$Res>
    implements $LabelModelCopyWith<$Res> {
  factory _$$LabelModelImplCopyWith(
          _$LabelModelImpl value, $Res Function(_$LabelModelImpl) then) =
      __$$LabelModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String text, TextStylePointer textStyle, ColorPointer color});
}

/// @nodoc
class __$$LabelModelImplCopyWithImpl<$Res>
    extends _$LabelModelCopyWithImpl<$Res, _$LabelModelImpl>
    implements _$$LabelModelImplCopyWith<$Res> {
  __$$LabelModelImplCopyWithImpl(
      _$LabelModelImpl _value, $Res Function(_$LabelModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LabelModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? textStyle = null,
    Object? color = null,
  }) {
    return _then(_$LabelModelImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      textStyle: null == textStyle
          ? _value.textStyle
          : textStyle // ignore: cast_nullable_to_non_nullable
              as TextStylePointer,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ColorPointer,
    ));
  }
}

/// @nodoc

class _$LabelModelImpl implements _LabelModel {
  const _$LabelModelImpl(
      {required this.text,
      this.textStyle = TextStylePointer.primary1,
      this.color = ColorPointer.primary1});

  @override
  final String text;
  @override
  @JsonKey()
  final TextStylePointer textStyle;
  @override
  @JsonKey()
  final ColorPointer color;

  @override
  String toString() {
    return 'LabelModel(text: $text, textStyle: $textStyle, color: $color)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LabelModelImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.textStyle, textStyle) ||
                other.textStyle == textStyle) &&
            (identical(other.color, color) || other.color == color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text, textStyle, color);

  /// Create a copy of LabelModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LabelModelImplCopyWith<_$LabelModelImpl> get copyWith =>
      __$$LabelModelImplCopyWithImpl<_$LabelModelImpl>(this, _$identity);
}

abstract class _LabelModel implements LabelModel {
  const factory _LabelModel(
      {required final String text,
      final TextStylePointer textStyle,
      final ColorPointer color}) = _$LabelModelImpl;

  @override
  String get text;
  @override
  TextStylePointer get textStyle;
  @override
  ColorPointer get color;

  /// Create a copy of LabelModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LabelModelImplCopyWith<_$LabelModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
