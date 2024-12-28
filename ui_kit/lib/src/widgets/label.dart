import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'label.freezed.dart';

@freezed
class LabelModel with _$LabelModel {
  const factory LabelModel({
    required String text,
    @Default(TextStylePointer.primary1) TextStylePointer textStyle,
    @Default(ColorPointer.primary1) ColorPointer color,
  }) = _LabelModel;
}

class Label extends StatelessWidget {
  final LabelModel model;

  const Label({required this.model, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      model.text,
      style: model.textStyle.styleOf(context).copyWith(
            color: model.color.colorOf(context),
          ),
    );
  }
}
