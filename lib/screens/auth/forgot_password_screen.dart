import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:shop_smart_users/constants/appconstant.dart';
import 'package:shop_smart_users/constants/imagepath.dart';
import 'package:shop_smart_users/services/validation.dart';
import 'package:shop_smart_users/widget/custom_textformfiled.dart';
import 'package:shop_smart_users/widget/text/cutom_subtitle.dart';
import 'package:shop_smart_users/widget/text/cutom_title.dart';

class ForgotPassowrd extends StatefulWidget {
  const ForgotPassowrd({super.key});
  static const nameSrceen = '/forgot_password_screen.dart';

  @override
  State<ForgotPassowrd> createState() => _ForgotPassowrdState();
}

class _ForgotPassowrdState extends State<ForgotPassowrd> {
  late final TextEditingController _emailController;
  late final FocusNode _focusNodeEmail;
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    _emailController = TextEditingController();
    _focusNodeEmail = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    if (mounted) {
      _emailController.dispose();
      _focusNodeEmail.dispose();
    }
    super.dispose();
  }
   Future<void> _forgotPassowrd() async {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _formKey.currentState!.validate();
      FocusScope.of(context).unfocus();
     
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child:
                  FancyShimmerImage(
                    boxFit: BoxFit.fill,
                    
                    imageUrl:ImagePath.forgotPassword ,)
                //   Image.asset(ImagePath.forgotPassword),
                ),
                const SizedBox(
                  height: 20,
                ),
                const CustomTitle(label: 'Forgot Password', fontSize: 20),
                const CustomsubTitle(
                  label:
                      'pleese enter the email address you\'d like your password reset information',
                  fontSize: 16,
                ),
                const SizedBox(
                  height: 20,
                ),
                //email
                CustomTextFormFiled(
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
                //buuttom
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.send),
                    onPressed: () async{
                  await   _forgotPassowrd();
                    },
                    label: const Text("Requset link "),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
