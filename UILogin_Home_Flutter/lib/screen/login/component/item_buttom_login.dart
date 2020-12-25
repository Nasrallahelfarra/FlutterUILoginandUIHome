import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test_1/helper/constants.dart';

import 'package:flutter_test_1/component/CustomeText.dart';
import 'package:flutter_test_1/component/CustomTextFilled.dart';
import 'package:flutter_test_1/component/CustomTextFilledPassword.dart';
import 'package:flutter_test_1/utility/size_config.dart';
import 'package:flutter_test_1/helper/Messages.dart';
class ItemButtom extends StatelessWidget {
  Function press;

  ItemButtom({this.press});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      child: Row(
        children: [
          Container(
            margin:EdgeInsets.only(left: 20,right: 30) ,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                color: Colors.black,

              ),

              child: FlatButton(
                color:kColorButtom ,
                splashColor: kPrimaryColor,
                hoverColor:kPrimaryColor,
                highlightColor: kPrimaryColor,

                child: Container(
                  child: SvgPicture.asset(
                    'assets/icons/phone.svg',
                    height: getProportionateScreenWidth(25),
                    width: getProportionateScreenWidth(25),
                  ),
                ),
              )
          ),
         // SizedBox(width: 20,),
          Flexible (
              child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                    color: kPrimaryColor,

                  ),

                  child: FlatButton(
                    onPressed: press,

                    color:kPrimaryColor ,
                    splashColor: kPrimaryColor,
                    hoverColor:kPrimaryColor,
                    highlightColor: kPrimaryColor,

                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomeText(title: 'تسجيل الدخول',color: Colors.white,fontSize: getProportionateScreenWidth(13),),
                        Container(
                          child: SvgPicture.asset(
                            'assets/icons/arrow_image.svg',
                            height: getProportionateScreenWidth(14),
                            width: getProportionateScreenWidth(18),
                          ),
                        )
                      ],
                    ),
                  )
              ),),

        ],
      ),
    );
  }
}
