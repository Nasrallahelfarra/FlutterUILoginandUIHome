import 'package:flutter/material.dart';
import 'package:flutter_test_1/helper/constants.dart';
import 'package:flutter_test_1/utility/size_config.dart';
import 'package:flutter_test_1/screen/my_order_screen/compnent/tool_bar.dart';
import 'package:flutter_test_1/screen/my_order_screen/screen_pinding/screen_pinding.dart';
import 'package:flutter_test_1/component/CustomeTabBar.dart';
import 'package:flutter_test_1/screen/home_screen/home_screen.dart';
import 'package:flutter_test_1/screen/my_order_screen/my_order_screen.dart';
class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin{
  TabController _tabController;
  int indexTab=0;

  @override
  void initState() {
    _tabController=TabController(initialIndex:0,length: 3, vsync: this);
    _tabController.addListener(_handleTabSelection);

    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: SizeConfig.screenWidth,
        height: SizeConfig.screenHeight,
        child:TabBarView(
            children: [
              HomeScreen(),
              MyOrderScreen(),
              MyOrderScreen(),

            ],
            controller: _tabController
        ),
      ),
      bottomNavigationBar:
      Container(
        color: Colors.white,
        child: CustomeTabBar(
          controller: _tabController,
        ),
      ),
    );
  }
  void _handleTabSelection() {
    setState(() {
      indexTab=_tabController.index;
    });
  }
}
