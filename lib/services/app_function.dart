import 'package:flutter/material.dart';
import 'package:shop_smart_users/constants/imagepath.dart';
import 'package:shop_smart_users/screens/auth/login_screen.dart';

import 'package:shop_smart_users/widget/text/cutom_title.dart';

class AppFunction {
  static Future<void> showErrorOrWarning(
    BuildContext context, {
    required String subtitle,
   // required Function functionOk,
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
                    onPressed:(){
                      Navigator.pushNamed(context, LoginScreen.nameSrceen);
                    },
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

  static Future<void> pickImageDialog({
    required BuildContext context,
    //  required String subtitle,
    required Function funcamera,
    required Function funGalary,
    required Function funRemove,
  }
      // bool iserror = false,
      ) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Center(
            child: CustomTitle(label: 'choose option'),
          ),
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          content: SingleChildScrollView(
            child: ListBody(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextButton.icon(
                    icon: const Icon(Icons.camera_alt_rounded),
                    label: const Text("  camira "),
                    onPressed: () {
                      funcamera();
                      if (Navigator.canPop(context)) {
                        Navigator.pop(context);
                      }
                    },
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextButton.icon(
                    icon: const Icon(Icons.image),
                    label: const Text(" callary "),
                    onPressed: () {
                      funGalary();
                      if (Navigator.canPop(context)) {
                        Navigator.pop(context);
                      }
                    },
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: TextButton.icon(
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
          ),
        );
      },
    );
  }
}
