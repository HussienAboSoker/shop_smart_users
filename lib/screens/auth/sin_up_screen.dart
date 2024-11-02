import 'dart:async';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shop_smart_users/rootscreens.dart';

import 'package:shop_smart_users/screens/auth/pick_image.dart';
import 'package:shop_smart_users/screens/home/appname.dart';
import 'package:shop_smart_users/services/app_function.dart';
import 'package:shop_smart_users/services/validation.dart';
import 'package:shop_smart_users/widget/custom_textformfiled.dart';
import 'package:shop_smart_users/widget/text/cutom_subtitle.dart';
import 'package:shop_smart_users/widget/text/cutom_title.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});
  static const String nameSrceen = '/sin_out_screen.dart';
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool obscureText = true;

  final _formKey = GlobalKey<FormState>();
  XFile? _pickedimageFill; //

  late final TextEditingController _emailController,
      _passwordController,
      _reppasswordController,
      _nameController;

  late final FocusNode _focusNodeEmail,
      _focusNodePassword,
      _focusNodeRepController,
      _focusNodeNameController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _reppasswordController = TextEditingController();

    //
    _focusNodeNameController = FocusNode();
    _focusNodeEmail = FocusNode();
    _focusNodePassword = FocusNode();
    _focusNodeRepController = FocusNode();
  }

  @override
  void dispose() {
    if (mounted) {
      _nameController.dispose();
      _emailController.dispose();
      _passwordController.dispose();
      _reppasswordController.dispose();
      //
      _focusNodeNameController.dispose();
      _focusNodeEmail.dispose();
      _focusNodePassword.dispose();
      _focusNodeRepController.dispose();
    }
    super.dispose();
  }

  Future<bool> _sinUpvalidat() async {
    final Completer<bool> completer = Completer<bool>();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final isValid = _formKey.currentState!.validate(); // Validate the form
      FocusScope.of(context).unfocus(); // Close the keyboard
      completer
          .complete(isValid); // Complete the future with the validation result
    });

    return completer
        .future; // Return the future, which will resolve to a boolean
  }

  Future<void> _pickedimagefun() async {
    final ImagePicker imagePicker = ImagePicker();
    await AppFunction.pickImageDialog(
        context: context,
        funcamera: () async {
          _pickedimageFill =
              await imagePicker.pickImage(source: ImageSource.camera);
          setState(() {});
        },
        funGalary: () async {
          _pickedimageFill =
              await imagePicker.pickImage(source: ImageSource.gallery);
          setState(() {});
        },
        funRemove: () {
          setState(() {
            _pickedimageFill == null;
          });
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              //mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 40,
                ),
                //Shop Smart
                const Align(
                  alignment: Alignment.center,
                  child: AppName(fontsize: 30,),
                ),
                const SizedBox(
                  height: 20,
                ),
                //welcom
                const Align(
                  alignment: Alignment.topLeft,
                  child: CustomTitle(
                    label: 'Welcom ',
                    fontSize: 25,
                  ),
                ),
                const CustomsubTitle(
                  label:
                      'sin up now to recieve spical offers and updates from our app',
                  fontSize: 20,
                ),
                const SizedBox(
                  height: 50,
                ),
                //pickimage
                Center(
                  child: PickImageDialog(
                    pickedimage: _pickedimageFill,
                    function: () async {
                      await _pickedimagefun();
                    },
                  ),
                ),
                //form
                Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 50,
                        ),
                        //fullname
                        CustomTextFormFiled(
                          // onFieldSubmitted: () {
                          //   FocusScope.of(context).requestFocus(_focusNodePassword);
                          // },
                          controller: _nameController,
                          focusNode: _focusNodeNameController,
                          hintText: 'full name',
                          keyboardType: TextInputType.name,
                          textInputAction: TextInputAction.next,
                          prefixIcon: Icons.person,

                          validator: FormValidator.validatFullname,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        //email
                        CustomTextFormFiled(
                          // onFieldSubmitted: () {
                          //   FocusScope.of(context).requestFocus(_focusNodePassword);
                          // },
                          controller: _emailController,
                          focusNode: _focusNodeEmail,
                          hintText: 'username@domain.com',
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          prefixIcon: Icons.email,

                          validator: FormValidator.validateEmail,
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        //password
                        CustomTextFormFiled(
                          obscureText: obscureText,
                          textInputAction: TextInputAction.next,
                          // onFieldSubmitted: () {
                          //   _loginvalidat();
                          // },
                          controller: _passwordController,
                          focusNode: _focusNodePassword,
                          hintText: 'Password',
                          keyboardType: TextInputType.visiblePassword,
                          prefixIcon: Icons.lock,
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                obscureText = !obscureText;
                              });
                            },
                            icon: Icon(obscureText
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                          validator: FormValidator.validatePassword,

                          //
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        //repetpassword
                        CustomTextFormFiled(
                          validator: (value) {
                            return FormValidator.validatRepetPassword(
                              value: value,
                              password: _passwordController.text,
                            );
                          },

                          obscureText: obscureText,
                          textInputAction: TextInputAction.done,
                          // onFieldSubmitted: () {
                          //   _loginvalidat();
                          // },
                          controller: _reppasswordController,
                          focusNode: _focusNodeRepController,
                          hintText: 'Repeat Password',
                          keyboardType: TextInputType.visiblePassword,
                          prefixIcon: Icons.lock,
                          suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                obscureText = !obscureText;
                              });
                            },
                            icon: Icon(obscureText
                                ? Icons.visibility
                                : Icons.visibility_off),
                          ),
                          //  validator: FormValidator.validatePassword,

                          //
                        ),
                        const SizedBox(
                          height: 20,
                        ),

                        //Sign up button
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: ElevatedButton(
                            onPressed: () async {
                              try {
                                bool isValid =
                                    await _sinUpvalidat(); // Wait for the validation result
                                if (isValid) {
                                  Navigator.pushNamed(
                                      context,
                                      RootScreens
                                          .namescreen); // Proceed if the form is valid
                                } else {
                                  // Show a message if the form is not valid
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content: Text(
                                            "Please correct the errors in the form")),
                                  );
                                }
                              } catch (e) {
                                // Handle any unexpected errors
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text("Error: $e")),
                                );
                              }
                            },
                            child: const Text("Sign up "),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        //I already have an account
                        const SizedBox(
                          width: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text("I already have an account"),
                            TextButton(
                              onPressed: () {},
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  "Sin in ?",
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
