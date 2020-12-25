import 'package:flutter/material.dart';

import 'constants.dart';

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: kColoreHinit,
    fontFamily: 'DroidSansArabic',
    primaryColor: Colors.white, //Changing this will change the color of the TabBar
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    inputDecorationTheme: inputDecorationTheme(),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    canvasColor: Colors.transparent,

  );
}

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),

    borderSide: const BorderSide(color: Colors.transparent, width: 0.0),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    filled: true,

    // If  you are using latest version of flutter then lable text and hint text shown like this
    // if you r using flutter less then 1.20.* then maybe this is not working properly
    // if we are define our floatingLabelBehavior in our theme then it's not applayed
    // floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
    enabledBorder: outlineInputBorder,
    disabledBorder:outlineInputBorder ,
    focusedBorder: outlineInputBorder,
    focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      borderSide: const BorderSide(color: Colors.grey, width: 0.0),
      gapPadding: 10,

    ),
    border: outlineInputBorder,
    errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(15)),
      borderSide: const BorderSide(color: Colors.red, width: 1),
      gapPadding: 10,

    ),
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(color: kTextColor),
    bodyText2: TextStyle(color: kTextColor),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: kPrimaryColor,
    elevation: 0,
    brightness: Brightness.light,
    iconTheme: IconThemeData(color: Colors.white),
    textTheme: TextTheme(
      headline6: TextStyle(color: Color(0XFF8B8B8B), fontSize: 18),
    ),
  );
}
