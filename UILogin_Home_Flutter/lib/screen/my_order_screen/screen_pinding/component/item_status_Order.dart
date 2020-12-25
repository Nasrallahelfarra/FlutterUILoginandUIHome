import 'package:flutter/material.dart';
import 'package:flutter_test_1/screen/my_order_screen/screen_pinding/component/header_pinding.dart';
import 'package:flutter_test_1/screen/my_order_screen/screen_pinding/component/after_header.dart';
import 'package:flutter_test_1/helper/constants.dart';
import 'package:flutter_test_1/screen/my_order_screen/screen_pinding/component/addresses.dart';
import 'package:flutter_test_1/screen/my_order_screen/screen_pinding/component/item_details_order.dart';
import 'package:flutter_test_1/screen/my_order_screen/screen_pinding/component/line_dote.dart';
import 'package:flutter_test_1/screen/my_order_screen/screen_pinding/component/item_details_invoice.dart';
import 'package:flutter_test_1/screen/my_order_screen/screen_pinding/component/footer.dart';

class ItemStatusMyOrder extends StatelessWidget {
  int index;

  ItemStatusMyOrder({this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 20,right: 20,bottom: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(15)),
      ),
      child: Column(
        children: [
          (index>0)?headerPending(title: 'انتهى',color:kColorButtom ,)
              :headerPending(title: 'جاري',color:Color(0xFFFAAF18) ,),
          Container(
            padding: EdgeInsets.all(20),
              child: AfterHeader()),
          Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                ItemAddress(),
                SizedBox(height: 10,),
                ItemDetailsOrder(),
                SizedBox(height: 20,),
                LineDote(),
                ItemDetailsInvoice(title: 'إجمالي تكلفة الشحن',price: '150 رس',),
                LineDote(),
                (index>0)?Footer(image: 'assets/icons/start.svg',title: 'تقييم الطلب',)
                    :Footer(image: 'assets/icons/close.svg',title: 'اللغاء الطلب',)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
