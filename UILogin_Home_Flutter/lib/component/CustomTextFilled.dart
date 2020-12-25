import 'package:flutter/material.dart';
import 'package:flutter_test_1/helper/constants.dart';
import 'package:get/get.dart';

import 'custom_surfix_icon.dart';

class CustomTextFilled extends StatelessWidget {
   String hintText;
   String iconsvg;
   String lable;
   FormFieldValidator<String> validator;
  ValueChanged<String> onChanged;
    TextEditingController controller;
  int type;


  CustomTextFilled({
    Key key,
    this.hintText,
    this.lable,
    this.iconsvg ,
    this.onChanged,
    this.controller,
    this.validator,
    this.type,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return TextFormField(
      style: TextStyle(fontSize: 15.0, color: Colors.black),

      controller: controller,
    onChanged: onChanged,
    validator: validator,

    cursorColor: kPrimaryColor,
    decoration: InputDecoration(
      filled: true,
      hintStyle: TextStyle(fontSize: 14.0, color: kColoreHinitText),

      // labelText: lable.tr,
      fillColor:(type==null)? Colors.white.withOpacity(0.35):(type==1)
          ?kColoreHinit:Colors.white,

      suffixIcon:(iconsvg!=null)?CustomSurffixIcon(svgIcon: iconsvg,):SizedBox(),
    hintText: hintText.tr,
     /* focusedBorder: const OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey, width: 0.0),
        borderRadius:  BorderRadius.all(
          const Radius.circular(15.0),
        ),      ),
      enabledBorder: const OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey, width: 0.0),
        borderRadius:  BorderRadius.all(
          const Radius.circular(15.0),
        ),      ),
      border: new OutlineInputBorder(


      ),*/
    ),

    );
    }


}
