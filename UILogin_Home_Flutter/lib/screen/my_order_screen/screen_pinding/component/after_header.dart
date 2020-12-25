import 'package:flutter/material.dart';
import 'package:flutter_test_1/component/CustomeText.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test_1/component/CustomeText.dart';
import 'package:flutter_test_1/helper/constants.dart';
import 'package:flutter_test_1/utility/size_config.dart';
import 'package:flutter_test_1/utility/size_config.dart';
class AfterHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment:CrossAxisAlignment.start ,
        children: [
          Row(
            children: [
              SizedBox(width: 20,),


              CustomeText(
                title: '#520011',
                fontSize: 13,
                color: Colors.black,

              ),
            ],
          ),
          SizedBox(height: 5,),
          Container(
            width: SizeConfig.screenWidth,
            child: SvgPicture.asset(
              'assets/icons/status_1.svg',
              height: getProportionateScreenWidth(40),
              width: SizeConfig.screenWidth,
            ),
          )
        ],
      ),
    );
  }
}
