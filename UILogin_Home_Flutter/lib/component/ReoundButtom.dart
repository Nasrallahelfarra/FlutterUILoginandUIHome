import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test_1/helper/constants.dart';

import 'package:flutter_test_1/component/CustomeText.dart';
import 'package:flutter_test_1/component/CustomTextFilled.dart';
import 'package:flutter_test_1/component/CustomTextFilledPassword.dart';
import 'package:flutter_test_1/utility/size_config.dart';
import 'package:flutter_test_1/helper/Messages.dart';
class ReoundButtom extends StatelessWidget {
  Function pass;
  String title;
  String image;
  Color color;
  Color textcolor;

  ReoundButtom({this.pass, this.title
  ,this.image,this.color,this.textcolor});

  @override
  Widget build(BuildContext context) {
    return  Container(

        padding: EdgeInsets.only(top: 10,bottom: 10,right: 15,left: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all( Radius.circular(15)),
          color: color,

        ),

        child: FlatButton(
          color:kPrimaryColor ,
          onPressed: pass,
          splashColor: kPrimaryColor,
          hoverColor:kPrimaryColor,
          highlightColor: kPrimaryColor,

          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomeText(title: title,color: textcolor,fontSize: getProportionateScreenWidth(13),),
              SizedBox(width: 10,),
              Container(
                child: SvgPicture.asset(
                  'assets/icons/${image}.svg',
                  height: getProportionateScreenWidth(20),
                  width: getProportionateScreenWidth(20),
                ),
              )
            ],
          ),
        )
    );
  }
}
