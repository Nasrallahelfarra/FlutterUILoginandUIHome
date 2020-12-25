import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_test_1/component/CustomTextFilled.dart';
import 'package:flutter_test_1/component/CustomeText.dart';
import 'package:flutter_test_1/helper/constants.dart';
import 'package:flutter_test_1/utility/size_config.dart';
class ItemCenter extends StatelessWidget {
  Function press;

  ItemCenter({this.press});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomeText(title: 'اشحن مستلزماتك',color: Colors.black,fontSize: getProportionateScreenWidth(16),),
          CustomeText(title: 'حدد المدينة المرسل اليها, لاحتساب التكلفة الأولية',color: kPrimaryColor,fontSize: getProportionateScreenWidth(12),),
          CustomTextFilled(hintText: 'اختر المدينة',lable: 'اختر المدين',
            iconsvg: 'assets/icons/choos_city.svg',type: 1,),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              color: kColorButtom,

            ),

           child: FlatButton(
        color:kColorButtom ,
        onPressed: press,
        splashColor: kPrimaryColor,
        hoverColor:kPrimaryColor,
        highlightColor: kPrimaryColor,

            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomeText(title: 'ابدأ الشحن',color: Colors.white,fontSize: getProportionateScreenWidth(13),),
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
        ),

        ],
      ),
    );
  }
}
