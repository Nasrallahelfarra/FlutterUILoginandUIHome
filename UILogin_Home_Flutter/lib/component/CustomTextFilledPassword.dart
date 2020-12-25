import 'package:flutter/material.dart';
import 'package:flutter_test_1/helper/constants.dart';

import 'package:get/get.dart';
class CustomTextFilledPassword extends StatefulWidget {
  final String hintText;
  final String iconsvg;
  final String lable;
  int type;

  final ValueChanged<String> onChanged;
  FormFieldValidator<String> validator;

  final  TextEditingController controller;
  CustomTextFilledPassword({
  Key key,
  this.hintText,
  this.lable,
  this.validator,
  this.iconsvg ,
    this.type,
  this.onChanged,
  this.controller,
}) ;
  @override
  _CustomTextFilledPasswordState createState() => _CustomTextFilledPasswordState(
      lable: lable,
      hintText:hintText,
      iconsvg:iconsvg,
      onChanged:onChanged,
      controller:controller,
      validator:validator,
       type: type,



  );
}

class _CustomTextFilledPasswordState extends State<CustomTextFilledPassword> {
  final String hintText;
  final String iconsvg;
  final String lable;
  final ValueChanged<String> onChanged;
  final  TextEditingController controller;
  FormFieldValidator<String> validator;
  int type;
  bool statusPassord=true;


  _CustomTextFilledPasswordState({
    Key key,
    this.hintText,
    this.lable,
    this.iconsvg ,
    this.onChanged,
    this.controller,
    this.validator,
    this.type,

  }) ;
  @override
  Widget build(BuildContext context) {
    return Container(

      child: TextFormField(
        style: TextStyle(fontSize: 15.0, color: Colors.black),

        obscureText: statusPassord,
        controller: controller,
        onChanged: onChanged,
        validator: validator,
        onTap: (){
        },
        cursorColor: kPrimaryColor,

        decoration: InputDecoration(
         // labelText: lable.tr,
          filled: true,
          fillColor:(type==null)? Colors.white.withOpacity(0.35):(type==1)
              ?kColoreHinit:Colors.white,
          suffixIcon:IconButton(
            onPressed: (){
              if(statusPassord==false){
                setState(() {
                  statusPassord=true;

                });
              }else{
                setState(() {
                  statusPassord=false;

                });
              }

            },
            icon: Icon((statusPassord? Icons.visibility :Icons.visibility_off),color: Colors.black,),
          ),
          hintText: hintText.tr,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
