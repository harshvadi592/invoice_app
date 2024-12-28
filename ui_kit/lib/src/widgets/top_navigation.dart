import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'top_navigation.freezed.dart';

@freezed
class TopNavigationModel with _$TopNavigationModel {
  const factory TopNavigationModel({
    TopNavigationLeftAccessoryModel? leftAccessory,
    ColorPointer? backgroundColor,
  }) = _TopNavigationModel;
}

abstract class TopNavigationLeftAccessoryModel {}

class TopNavigationBackLeftAccessoryModel
    extends TopNavigationLeftAccessoryModel {}

class TopNavigationEmptyLeftAccessoryModel
    extends TopNavigationBackLeftAccessoryModel {}

class TopNavigation extends StatelessWidget implements PreferredSizeWidget {
  final TopNavigationModel model;
  final VoidCallback? onLeftAccessoryPressed;

  const TopNavigation(
      {required this.model, this.onLeftAccessoryPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
      ),
      backgroundColor: model.backgroundColor?.colorOf(context) ??
          context.colorStyling.transparent,
      elevation: 0.9,
      leading: _buildLeftAccessory(context),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  Widget? _buildLeftAccessory(BuildContext context) {
    final leftAccessory = model.leftAccessory;

    if (leftAccessory is TopNavigationEmptyLeftAccessoryModel) return null;

    if (leftAccessory is TopNavigationBackLeftAccessoryModel) {
      return _buildBackButton(context);
    }

    return Navigator.of(context).canPop() ? _buildBackButton(context) : null;
  }

  Widget _buildBackButton(BuildContext context) {
    return InkWell(
        onTap: onLeftAccessoryPressed ?? Navigator.of(context).maybePop,
        child: const Icon(Icons.arrow_back, color: Colors.black87));
  }
}
