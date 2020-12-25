import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test_1/component/CustomeText.dart';
import 'package:flutter_test_1/helper/constants.dart';
import 'package:flutter_test_1/utility/size_config.dart';
class ItemOrder1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
              alignment: Alignment.center,
              height: getProportionateScreenWidth(45),
              width: getProportionateScreenWidth(45),
         decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white.withOpacity(0.2),
      ),
                child: SvgPicture.asset(
         'assets/icons/hadia.svg',
              height: getProportionateScreenWidth(30),
              width: getProportionateScreenWidth(30 ),
      ),
    ),
              SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomeText(title: 'الطلب #200001',color:Colors.white,fontSize: getProportionateScreenWidth(14),),
                  CustomeText(title: 'الطلب الطلب جاري التجهيز للشحن قريباً',color:Colors.white,fontSize: getProportionateScreenWidth(11),),

                ],
              )
            ],
          ),

          SvgPicture.asset(
            'assets/icons/star_zogrof.svg',
            height: getProportionateScreenWidth(40),
            width: getProportionateScreenWidth(60),
          ),
          
        ],
      ),
    );
  }
}
