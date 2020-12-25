import 'package:flutter/material.dart';
import 'package:flutter_test_1/screen/my_order_screen/screen_pinding/component/item_image_order.dart';
class ItemDetailsOrder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              ItemImageOrder(title: '28/05/2020 - 19:00',image: 'assets/icons/time.svg',),
              ItemImageOrder(title: 'كرتون(25)',image: 'assets/icons/packaging.svg',)
            ],
          ),
          SizedBox(height: 20,),

          Row(
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
              ItemImageOrder(title: 'بلاستيك اجهزة كهربائية',image: 'assets/icons/Weight_Scale.svg',),
              ItemImageOrder(title: 'كرتون(25)',image: 'assets/icons/Weight_Scale.svg',)
            ],
          )
        ],
      ),
    );
  }
}
