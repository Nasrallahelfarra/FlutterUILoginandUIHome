import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_1/component/CustomeText.dart';
import 'package:flutter_test_1/component/DashedRect.dart';
import 'package:flutter_test_1/utility/size_config.dart';
class ItemHeaderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment:  Alignment.center,
      margin: EdgeInsets.only(top: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Flexible(
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start ,
              children: [
                CustomeText(title: 'مرحبا بك, محمد الخالدي',fontSize: getProportionateScreenWidth(15),color: Colors.white,),
                Row(
                  crossAxisAlignment:CrossAxisAlignment.start ,
                  children: [
                    CustomeText(title: 'المنزل:المنطقة الحمراء, الرياض',fontSize: getProportionateScreenWidth(13),color: Colors.white,),
                    SizedBox(width: 5,),
                    Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(5),
                       decoration: BoxDecoration(
                         color: Colors.black.withOpacity(0.3),
                        borderRadius:  BorderRadius.circular(15)
                       ),
                        child: Icon(Icons.keyboard_arrow_down_sharp,color: Colors.white,))  ,
                  ],
                ),


              ],
            ),

          ),
          Container(
            height: 50,
            width: 50,
            child: DottedBorder(
              borderType: BorderType.Circle,
              color: Colors.white,
              padding: EdgeInsets.all(6),
              child: CircleAvatar(
                backgroundImage:AssetImage('assets/icons/user.png')
                /*NetworkImage('https://via.placeholder.com/150')*/,
                backgroundColor: Colors.transparent,
              ),
            ),
          )

        ],
      ),
    );
  }
}
