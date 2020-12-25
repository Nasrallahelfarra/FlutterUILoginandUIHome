import 'package:flutter/material.dart';
import 'package:flutter_test_1/helper/constants.dart';

import 'package:flutter_test_1/screen/my_order_screen/screen_pinding/component/item_status_Order.dart';
class Pinding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: kColoreHinit,
            child:ListOrder(context) ,
    );
  }
  Widget ListOrder(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, postion) {
      return ItemStatusMyOrder(index: postion,);



      },
      itemCount: 4,
     // 2nd add

    );
  }

}
