import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test_1/component/CustomeText.dart';
import 'package:flutter_test_1/helper/constants.dart';
import 'package:flutter_test_1/utility/size_config.dart';
class toolBar extends StatelessWidget {
  Function press;

  toolBar({this.press});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25,right: 25,top: 12,bottom: 12),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          CustomeText(title: 'قائمة الطلبات',color: Colors.white,fontSize: getProportionateScreenWidth(14),),

          Container(
              padding: EdgeInsets.only(left: 10,right: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Color(0xFF3A3F98),

              ),

              child: FlatButton(
                color:kColorButtom ,
                onPressed: press,
                splashColor: kPrimaryColor,
                hoverColor:kPrimaryColor,
                highlightColor: kPrimaryColor,

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomeText(title: 'كافة الأوقــات',color: Colors.white,fontSize: getProportionateScreenWidth(11),),
                    SizedBox(width: 5,),
                    Container(
                      child: SvgPicture.asset(
                        'assets/icons/gelnadr.svg',
                        height: getProportionateScreenWidth(12),
                        width: getProportionateScreenWidth(12),
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
