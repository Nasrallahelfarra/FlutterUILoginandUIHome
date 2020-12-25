import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test_1/component/CustomeText.dart';
import 'package:flutter_test_1/helper/constants.dart';
import 'package:flutter_test_1/utility/size_config.dart';
class ItemAddress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth,
      padding: EdgeInsets.only(left: 20,right: 20,top: 10,bottom: 10),
      margin: EdgeInsets.only(top: 5,bottom: 5),
      decoration: BoxDecoration(
        color: kColoreHinit,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween ,
        children: [
          CustomeText(title: 'مكةً',color:Colors.black,fontSize: getProportionateScreenWidth(13),),
          SvgPicture.asset(
            'assets/icons/arrow_order.svg',
            height: getProportionateScreenWidth(35),
            width: getProportionateScreenWidth(35),
          ),
          CustomeText(title: 'المدينةً',color:Colors.black,fontSize: getProportionateScreenWidth(13),),

        ],
      )
      ,);
  }
}
