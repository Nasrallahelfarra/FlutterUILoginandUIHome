import 'package:flutter/material.dart';
import 'package:flutter_test_1/component/CustomeText.dart';
import 'package:flutter_test_1/helper/constants.dart';
import 'package:flutter_test_1/utility/size_config.dart';
import 'package:flutter_svg/svg.dart';
class Footer extends StatelessWidget {
  String image;
  String title;

  Footer({this.image, this.title});

  @override
  Widget build(BuildContext context) {
     return Container(
       width:SizeConfig.screenWidth ,
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            image,
            height: getProportionateScreenWidth(20),
            width:  getProportionateScreenWidth(20),
          ),
          SizedBox(width: 15,),
          SizedBox(

            child: CustomeText(
              title:title,
              fontSize: 13,
              color: Colors.red,

            ),
          ),
        ],
      ),
    );
  }
}
