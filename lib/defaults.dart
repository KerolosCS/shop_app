/*
 *
 * ----------------
 * | 241030072002 |
 * ----------------
 * Copyright © [2023] KERO CS FLUTTER DEVELOPMENT.
 * All Rights Reserved. For inquiries or permissions, contact  me ,
 * https://www.linkedin.com/in/kerolos-fady-software-engineer/
 *
 * /
 */

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
// import 'package:shop_app/modules/news_app/web_view.dart';

Widget defaultFormFeild({
  required TextEditingController controller,
  required TextInputType type,
  Function(String)? onSubmit,
  Function(String)? onChange,
  String? Function(String?)? validate,
  Function()? onTp,
  bool click = true,
  required String label,
  IconData? prefix,
  IconData? suffix,
  // bool ob = false,
  bool isPassword = false,
  void Function()? onPressedSuffix,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      validator: validate,
      onTap: onTp,
      enabled: click,

      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(prefix),
        suffixIcon: IconButton(
          onPressed: onPressedSuffix,
          icon: Icon(suffix),
        ),
        border: const OutlineInputBorder(),
      ),
      // style: const TextStyle(
      //   fontSize: 20,
      // ),
    );

void navigateTo(context, route) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => route,
      ),
    );

void navigateToWithReplacment(context, widget) => Navigator.pushAndRemoveUntil(
    context,
    MaterialPageRoute(
      builder: (context) => widget,
    ),
    (prevRoute) => false);

Future<bool?> toastShow({
  required String txt,
  required Color backColor,
}) async {
  return await Fluttertoast.showToast(
      msg: txt,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 2,
      backgroundColor: backColor,
      textColor: Colors.white,
      fontSize: 16.0);
}

void printFullText(String txt) {
  final pattern = RegExp('.{1,800}');
  // ignore: avoid_print
  pattern.allMatches(txt).forEach((element) => print(element.group(0)));
}
