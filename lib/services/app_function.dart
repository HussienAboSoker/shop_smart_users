import 'package:flutter/material.dart';
import 'package:shop_smart_users/constants/imagepath.dart';
import 'package:shop_smart_users/widget/text/cutom_title.dart';

class AppFunction {
  static Future<void> showErrorOrWarning(
    BuildContext context, {
    required String subtitle,
    required Function function,
    bool iserror = false,
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
                iserror ? ImagePath.warning : ImagePath.error,
                width: 140,
                height: 100,
              ),
              const SizedBox(
                height: 10,
              ),
              CustomTitle(label: subtitle),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Visibility(
                    visible: !iserror,
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Cancel"),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.red),
                    ),
                    child: const Text("Ok"),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        );
      },
    );
  }
}
