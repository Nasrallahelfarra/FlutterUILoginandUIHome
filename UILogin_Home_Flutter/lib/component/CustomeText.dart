import 'package:flutter/material.dart';
import 'package:get/get.dart';
class CustomeText extends StatelessWidget {
  final String title;
  final Color color;
  final double fontSize;
  final Function press;


  const CustomeText
      ({Key key,this.title, this.color,this.fontSize,this.press}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:  press,
      child: Container(
        child: Text(title.tr,style:TextStyle(color: color,fontSize:fontSize),),
      ),
    );
  }
}
