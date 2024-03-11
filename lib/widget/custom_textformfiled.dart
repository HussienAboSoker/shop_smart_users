import 'package:flutter/material.dart';

class CustomTextFormFiled extends StatefulWidget {
  const CustomTextFormFiled({
    super.key,
    this.obscureText = false,
    required this.controller,
    required this.focusNode,
    required this.hintText,
    this.prefixIcon,
    required this.keyboardType,
    this.validator,
    required this.textInputAction,
    this.suffixIcon, //required  this.onFieldSubmitted,
  });
  final TextEditingController controller;
  final FocusNode focusNode;
  final String hintText;
  final IconData? prefixIcon;
  final IconButton? suffixIcon;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final bool obscureText;
  // final Function onFieldSubmitted;
  // final FormFieldValidator<String>? validator;
  // final Function validatorfn;
  final String? Function(String?)? validator;
  @override
  State<CustomTextFormFiled> createState() => _CustomTextFormFiledState();
}

class _CustomTextFormFiledState extends State<CustomTextFormFiled> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      //  onFieldSubmitted:widget.onFieldSubmitted(),

      obscureText: widget.obscureText,
      controller: widget.controller,
      focusNode: widget.focusNode,
      //  textInputAction: widget.textInputAction,
      keyboardType: widget.keyboardType,
      validator: widget.validator,
      decoration: InputDecoration(
        suffixIcon: widget.suffixIcon,

        prefixIcon: Icon(widget.prefixIcon),
        hintText: widget.hintText,
        //   border: InputBorder.none,
      ),
    );
  }
}
