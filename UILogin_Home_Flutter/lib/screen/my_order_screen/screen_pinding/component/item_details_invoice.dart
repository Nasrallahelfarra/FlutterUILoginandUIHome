import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_test_1/helper/constants.dart';
import 'package:flutter_test_1/utility/size_config.dart';
class ItemDetailsInvoice extends StatelessWidget {
  String price;
  String title;


  ItemDetailsInvoice({this.price, this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 15),

      decoration: BoxDecoration(
        color: Colors.white,
      ),

      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween ,
        children: [
          Text(title.tr,style: TextStyle(color: Colors.black,fontSize: 13),),
          Text(price,style: TextStyle(color:  Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),

        ],
      ),
    );
  }
}
