import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:shop_smart_users/screens/auth/sin_up_screen.dart';
import 'package:shop_smart_users/services/validation.dart';
import 'package:shop_smart_users/widget/custom_textformfiled.dart';
import 'package:shop_smart_users/widget/text/cutom_subtitle.dart';
import 'package:shop_smart_users/widget/text/cutom_title.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  static const String nameSceen = '/login_screen.dart';
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscureText = true;
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final FocusNode _focusNodeEmail;
  late final FocusNode _focusNodePassword;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _focusNodeEmail = FocusNode();
    _focusNodePassword = FocusNode();
  }

  @override
  void dispose() {
    if (mounted) {
      _emailController.dispose();
      _passwordController.dispose();
      _focusNodeEmail.dispose();
      _focusNodePassword.dispose();
    }
    super.dispose();
  }

  Future<void> _loginvalidat() async {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _formKey.currentState!.validate();
      FocusScope.of(context).unfocus();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
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
                    const CustomTitle(
                      label: 'Welcom Back',
                      fontSize: 20,
                    ),
                    const CustomsubTitle(
                      label: 'Lets get logged in so you can start exploring',
                      fontSize: 20,
                    ),
                    const SizedBox(
                      height: 50,
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
                      textInputAction: TextInputAction.done,
                      // onFieldSubmitted: () {
                      //   _loginvalidat();
                      // },
                      controller: _passwordController,
                      focusNode: _focusNodePassword,
                      hintText: '***************',
                      keyboardType: TextInputType.visiblePassword,
                      prefixIcon: Icons.lock,
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                        icon: Icon(obscureText
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                      validator: FormValidator.validatePassword,

                      //
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //Forget password ?
                    Align(
                      alignment: Alignment.topRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text("Forget password ?"),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //Sign in button
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: () {
                          _loginvalidat();
                        },
                        child: const Text("Sign in "),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    //OR CONNECT USING
                    const Align(
                      alignment: Alignment.center,
                      child: CustomsubTitle(
                        label: 'OR CONNECT USING',
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: kBottomNavigationBarHeight + 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Flexible(
                            flex: 2,
                            child: ElevatedButton.icon(
                              onPressed: () {},
                              icon: const Flexible(
                                  child: Icon(
                                Ionicons.logo_google,
                                color: Colors.red,
                              )),
                              label: const Text(
                                "sign in with google",
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                          Flexible(
                            child: ElevatedButton(
                              onPressed: () {},
                              child: const Text(
                                "GEST ?",
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      height: kBottomNavigationBarHeight + 10,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Flexible(
                            flex: 2,
                            child: Text(
                              "Dont have an account ?",
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Flexible(
                            child: TextButton(
                              onPressed: () {},
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, SignUpScreen.nameSceen);
                                },
                                child: const Text(
                                  "Sing up ?",
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
