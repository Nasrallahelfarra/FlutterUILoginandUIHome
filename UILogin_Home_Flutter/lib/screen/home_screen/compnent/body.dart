import 'package:flutter/material.dart';
import 'package:flutter_test_1/component/CustomTextFilled.dart';
import 'package:flutter_test_1/component/Custome_Container.dart';
import 'package:flutter_test_1/helper/constants.dart';
import 'package:flutter_test_1/utility/size_config.dart';
import 'package:flutter_test_1/screen/home_screen/compnent/CenterItem.dart';
import 'package:flutter_test_1/screen/home_screen/compnent/item_order_1.dart';
import 'package:flutter_test_1/screen/home_screen/compnent/item_order_2.dart';
import 'item_header_home.dart';
class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: kColoreHinit,
        child: Stack(
          children: [
        Container(
        height: SizeConfig.screenHeight*0.45,
          color: kPrimaryColor,),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Column(
                children: [
                  CustomeContainer(
                      child: Column(
                        children: [
                          ItemHeaderScreen(),
                          CustomTextFilled(hintText: 'ادخل رقم الطلب',lable: 'ادخل رقم الطلب',
                          iconsvg: 'assets/icons/search.svg',),
                          SizedBox(height: 20,),

                          ItemCenter(),
                          ListOrder(context),
                        ],
                      ),

                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget ListOrder(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, postion) {
        if(postion==0){
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: ItemOrder1(),
          );
        }else{
          return Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: ItemOrder2(),
          );
        }

            
      },
      itemCount: 4,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(), // 2nd add

    );
  }
}
