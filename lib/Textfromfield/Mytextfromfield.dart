import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Myfield extends StatelessWidget {
  final TextEditingController? controller;
  final String lable;
  final String? hintText;
  final int? maxLength;
  final int maxLines;
  final bool obscureText;
  final String? Function(String?)? validator;
  final Widget? suffix;
  final Widget? prefix;
  final TextInputType? keyboardType;
  final String? initialValue;
  final List<TextInputFormatter>? inputFormatters;

  const Myfield({Key? key,
    this.controller,
    required this.lable,
    this.hintText,
    this.maxLength,
    this.maxLines = 1,
    this.obscureText = false,
    this.validator,
    this.suffix,
    this.prefix,
    this.keyboardType,
    this.initialValue,
    this.inputFormatters,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
      keyboardType: keyboardType,
      initialValue: initialValue,
      inputFormatters: inputFormatters,
      controller: controller,
      maxLength: maxLength,
      maxLines: maxLines,
      obscureText: obscureText,
      validator: validator,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 17,
        ),
        suffixIcon: suffix,
        prefix: prefix,
        suffixIconConstraints: BoxConstraints(
          maxHeight: 35,
          maxWidth: 60,
          minHeight: 20,
          minWidth: 25 ,
        ),
        labelText: lable,

        hintText: hintText,
        labelStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 14.5,
          fontWeight: FontWeight.w600,
        ),
        floatingLabelStyle: const TextStyle(
          color: Colors.purple,
          fontSize: 15.5,
          fontWeight: FontWeight.w800,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        hintStyle: const TextStyle(
          color: Colors.grey,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 0.8,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Colors.green,
            width: 1.5,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Colors.green,
            width: 1,
          ),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 0.8,
          ),
        ),
      ),
    );

  }
}
