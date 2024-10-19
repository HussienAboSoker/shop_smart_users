

import 'package:flutter/material.dart';
import 'package:shop_smart_users/constants/imagepath.dart';
import 'package:shop_smart_users/widget/text/cutom_title.dart';

class AppFunction {
  /// Displays a dialog with an error or warning message.
  static Future<void> showErrorOrWarning(
    BuildContext context, {
    required String subtitle,
    required Function funcation,
    required bool iserror,
  }) async {
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                iserror ? ImagePath.error : ImagePath.warning,
                width: 140,
                height: 100,
              ),
              const SizedBox(height: 10),
              CustomTitle(label: subtitle),
              const SizedBox(height: 10),
              _buildDialogActions(
                context: context,
                funcation: funcation,
                iserror: iserror,
              ),
            ],
          ),
        );
      },
    );
  }

  /// Builds the actions (buttons) in the dialog.
  static Widget _buildDialogActions({
    required BuildContext context,
    required Function funcation,
    required bool iserror,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (!iserror) ...[
          _buildDialogButton(
            context: context,
            label: "Cancel",
            color: Colors.green,
            onPressed: () => Navigator.pop(context),
          ),
          const SizedBox(width: 10),
        ],
        _buildDialogButton(
          context: context,
          label: "Ok",
          color: Colors.red,
          onPressed: () {
            funcation();
            Navigator.pop(context);
          },
        ),
      ],
    );
  }

  /// Creates a reusable button for the dialog.
  static Widget _buildDialogButton({
    required BuildContext context,
    required String label,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(color),
        foregroundColor: MaterialStateProperty.all(Colors.white),
      ),
      onPressed: onPressed,
      child: Text(label),
    );
  }

  /// Displays an image picker dialog with options for camera, gallery, and removal.
  static Future<void> pickImageDialog({
    required BuildContext context,
    required Function funcamera,
    required Function funGalary,
    required Function funRemove,
  }) async {
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Center(child: CustomTitle(label: 'Choose Option')),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                _buildImagePickerOption(
                  context: context,
                  icon: Icons.camera_alt_rounded,
                  label: "Camera",
                  onPressed: funcamera,
                ),
                _buildImagePickerOption(
                  context: context,
                  icon: Icons.image,
                  label: "Gallery",
                  onPressed: funGalary,
                ),
                _buildImagePickerOption(
                  context: context,
                  icon: Icons.remove_circle_outline,
                  label: "Remove",
                  iconColor: Colors.red,
                  onPressed: funRemove,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  /// Creates a reusable image picker option button.
  static Widget _buildImagePickerOption({
    required BuildContext context,
    required IconData icon,
    required String label,
    required Function onPressed,
    Color? iconColor,
  }) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: TextButton.icon(
        icon: Icon(icon, color: iconColor ?? Theme.of(context).iconTheme.color),
        label: Text(label),
        onPressed: () {
          onPressed();
          if (Navigator.canPop(context)) {
            Navigator.pop(context);
          }
        },
      ),
    );
  }
}
