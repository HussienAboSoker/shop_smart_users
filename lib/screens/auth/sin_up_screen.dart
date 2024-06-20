import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:shop_smart_users/screens/auth/pick_image.dart';
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

  Future<void> _sinUpvalidat() async {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _formKey.currentState!.validate();
      FocusScope.of(context).unfocus();
    });
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
              await imagePicker.pickImage(source: ImageSource.camera);
          setState(() {});
        },
        funRemove: () async {
          _pickedimageFill == null;
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  //Shop Smart
                  const Align(
                    alignment: Alignment.center,
                    child: CustomTitle(
                      label: 'Shop Smart',
                      fontSize: 30,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  //welcom
                  const CustomTitle(
                    label: 'Welcom ',
                    fontSize: 25,
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

                  //Sign in button
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      onPressed: () {
                        _sinUpvalidat();
                      },
                      child: const Text("Sign up "),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),

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
            ),
          ),
        ),
      ),
    );
  }
}
