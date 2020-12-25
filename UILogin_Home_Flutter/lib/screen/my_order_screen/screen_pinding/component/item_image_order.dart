import 'package:flutter/material.dart';
import 'package:flutter_test_1/component/CustomeText.dart';
import 'package:flutter_test_1/helper/constants.dart';
import 'package:flutter_test_1/utility/size_config.dart';
import 'package:flutter_svg/svg.dart';

class ItemImageOrder extends StatelessWidget {
  String image;
  String title;

  ItemImageOrder({this.image, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          SvgPicture.asset(
            image,
            height: getProportionateScreenWidth(20),
            width:  getProportionateScreenWidth(20),
          ),
          SizedBox(width: 10,),
          SizedBox(

            child: CustomeText(
              title:title,
              fontSize: 13,
              color: Colors.black,

            ),
          ),
        ],
      ),
    );
  }
}
