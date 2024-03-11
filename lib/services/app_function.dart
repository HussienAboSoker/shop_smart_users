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

  static Future<void> pickImageDialog(
    BuildContext context,{
    //  required String subtitle,
    required Function funcamera,
    required Function funGalary,
    required Function funRemove,
    }
    // bool iserror = false,
  ) async {
    await showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Center(
            child: CustomTitle(label: 'choose option'),
          ),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.camera_alt_rounded),
                  label: const Text("  camira "),
                  onPressed: () {
                    funcamera();
                  },
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.image),
                  label: const Text(" callary "),
                  onPressed: () {
                    funGalary();
                  },
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: ElevatedButton.icon(
                  icon: const Icon(
                    Icons.remove_circle_outline,
                    color: Colors.red,
                  ),
                  label: const Text(
                    "remove ",
                    selectionColor: Colors.red,
                  ),
                  onPressed: () {
                    funRemove();
                    if (Navigator.canPop(context)) {
                      Navigator.pop(context);
                    }
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
