import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter_test_1/helper/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class CustomeTabBar extends StatelessWidget {

  TabController controller;

  CustomeTabBar({Key key,this.controller}):super(key:key);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      indicatorColor: Colors.black,
      labelColor: kPrimaryColor,
      unselectedLabelColor: kUnSelectTabColor2,
      tabs: [
        Tab(text:'الرئيسية'.tr ,icon: SvgPicture.asset("assets/icons/home_tab.svg",color: (controller.index==0)?kPrimaryColor:kUnSelectTabColor2,)),
        Tab(text:'الطلبات' ,icon: SvgPicture.asset("assets/icons/orders.svg",color: (controller.index==1)?kPrimaryColor:kUnSelectTabColor2),),
        Tab(text:'حسابي' ,icon: SvgPicture.asset("assets/icons/uset_tab.svg",color: (controller.index==2)?kPrimaryColor:kUnSelectTabColor2),),
      ],
      controller: controller,
    );
  }
}
