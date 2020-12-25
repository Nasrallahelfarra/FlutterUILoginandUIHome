import 'package:flutter/material.dart';
import 'package:flutter_test_1/utility/size_config.dart';
const RootUrl="https://lamsah.co/rest/";
const RootUrl2="https://lamsah.co";
const URlSlider =RootUrl2+"/pub/media";
const API_PATHImageCat =RootUrl2+"/pub/media/catalog/";
const TOKEN_Url= "Bearer 9vi4jm40hlh7ubf9mfzyixd5lj2y1aq1";
const kNameFont = 'DroidSansArabic';

const kPrimaryColor = Color(0xFF4349B5);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);
const kTextColorButtom = Color(0xFFFFFFFF);
const kColorButtom = Color(0xFF3393CF);
const kBorderColor = Color(0xFFe3e3e3);
const kUnSelectTabColor = Color(0xFF383838);
const kTextColorLight = Color(0xFFFFFFFF);
const kTextLightColor = Color(0xFFACACAC);
const kDisCountColor = Color(0xFFFFB7B7);
const kColoreHinitText = Color(0xFFE8E8E8);
const kColoreHinit = Color(0xFFF9F9F9);
const kUnSelectTabColor2 = Color(0xFFA4B0BE);


const kDefaultPaddin = 20.0;

const kAnimationDuration = Duration(milliseconds: 200);

final headingStyle = TextStyle(
  fontSize: getProportionateScreenWidth(28),
  fontWeight: FontWeight.bold,
  color: Colors.black,
  height: 1.5,
);

const defaultDuration = Duration(milliseconds: 250);

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProportionateScreenWidth(15)),
  border: outlineInputBorder(),
  focusedBorder: outlineInputBorder(),
  enabledBorder: outlineInputBorder(),
);

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
    borderSide: BorderSide(color: kTextColor),
  );
}
