import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test_1/component/CustomeText.dart';
import 'package:flutter_test_1/helper/constants.dart';
import 'package:flutter_test_1/utility/size_config.dart';

class headerPending extends StatelessWidget {
  String title;
  Color color;

  headerPending({this.title, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          Row(
            children: [
              SizedBox(width: 15,),
              SvgPicture.asset(
                'assets/icons/logout.svg',
                height: getProportionateScreenWidth(15),
                width: getProportionateScreenWidth(15),
              ),
              SizedBox(width: 5,),
              CustomeText(
                title: 'الطلب',
                fontSize: 13,
                color: Colors.black,

              ),
            ],
          ),




          Container(
            width: getProportionateScreenWidth(100),

            padding: EdgeInsets.all(10) ,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: color,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                )
            ),
           child: CustomeText(
             title: title,
             fontSize: 13,
             color: Colors.white,

           ),
          ),
        ],
      ),
    );
  }
}
