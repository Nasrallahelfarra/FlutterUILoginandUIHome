import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_test_1/helper/constants.dart';

class CustomeTabBarMyOrder extends StatelessWidget {

   TabController controller;

   CustomeTabBarMyOrder({Key key,this.controller}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorColor: kPrimaryColor,
      labelColor: kPrimaryColor,
      unselectedLabelColor: kUnSelectTabColor,
      tabs: [
        Tab(text:'المكتملة' ),
        Tab(text:'الحالي',),
      ],
  controller: controller,
    );
  }
}
