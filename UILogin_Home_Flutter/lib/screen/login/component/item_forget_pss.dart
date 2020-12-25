import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test_1/helper/constants.dart';

import 'package:flutter_test_1/component/CustomeText.dart';
import 'package:flutter_test_1/component/CustomTextFilled.dart';
import 'package:flutter_test_1/component/CustomTextFilledPassword.dart';
import 'package:flutter_test_1/utility/size_config.dart';
import 'package:flutter_test_1/helper/Messages.dart';
class ItemForGetPass extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween ,
        children: [
          CustomeText(title: kPassword,fontSize: 14,color: Colors.black,),
          Text(
            kForgot_Password,
            style: TextStyle(
              fontSize: 14,
              color: kPrimaryColor ,
              decoration: TextDecoration.underline,
            ),
          )
        ],
      ),
    );
  }
}
