import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test_1/component/CustomeText.dart';
import 'package:flutter_test_1/helper/constants.dart';
import 'package:flutter_test_1/utility/size_config.dart';
class ItemOrder2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/icons/notification.svg',
                    height: getProportionateScreenWidth(18),
                    width: getProportionateScreenWidth(18),
                  ),
                  SizedBox(width:  getProportionateScreenWidth(10),),
                  CustomeText(title: 'الطلب 52001',color:Colors.black,fontSize: getProportionateScreenWidth(13),),
                  CustomeText(title: ' | جاري التجهيز ',color:kPrimaryColor,fontSize: getProportionateScreenWidth(13),),
                ],
              ),
              Row(
                children: [
                  SizedBox(width: getProportionateScreenWidth(30),),

                  CustomeText(title: 'تجهيز الشحنة و تغليفها قبل التوصيلً',color:Colors.black,fontSize: getProportionateScreenWidth(11),),
                ],
              ),

            ],
          ),
          CustomeText(title: '08:30ً',color:kPrimaryColor,fontSize: getProportionateScreenWidth(11),),

        ],
      ),
    );
  }
}
