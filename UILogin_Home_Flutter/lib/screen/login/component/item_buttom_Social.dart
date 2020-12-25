import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test_1/helper/constants.dart';

import 'package:flutter_test_1/component/CustomeText.dart';
import 'package:flutter_test_1/component/CustomTextFilled.dart';
import 'package:flutter_test_1/component/CustomTextFilledPassword.dart';
import 'package:flutter_test_1/utility/size_config.dart';
import 'package:flutter_test_1/helper/Messages.dart';
import 'package:flutter_test_1/component/ReoundButtom.dart';

class ItemButtomSocial extends StatelessWidget {
  Function press;

  ItemButtomSocial({this.press});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only(left: 30,right: 30) ,
      width: SizeConfig.screenWidth,
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
        children: [

          ReoundButtom(title: 'via Apple',color:Colors.black
            ,image: 'apple_icon',textcolor: Colors.white),

          ReoundButtom(title: 'via Google',
            color: Color(0xFFF1F1F1),image: 'google_icon',textcolor: Colors.black,),

        ],
      ),
    );
  }
}
