import 'package:flutter/material.dart';
import 'package:flutter_test_1/helper/constants.dart';
import 'package:flutter_test_1/utility/size_config.dart';
import 'package:flutter_test_1/screen/my_order_screen/compnent/tool_bar.dart';
import 'package:flutter_test_1/component/TabBarMyOrder.dart';
import 'package:flutter_test_1/screen/my_order_screen/screen_pinding/screen_pinding.dart';
class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin{
  TabController _tabController;

  @override
  void initState() {
    _tabController=TabController(initialIndex:0,length: 2, vsync: this);

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
    return Stack(
      children: [
        Container(
          height: SizeConfig.screenHeight*0.13,
          color: kPrimaryColor,),

        Container(
          height:SizeConfig.screenHeight ,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: toolBar(),
              ),
              Container(
                color: Colors.white,
                child: CustomeTabBarMyOrder(
                  controller: _tabController,
                ),
              ),
              Flexible (
                child: Container(

                  alignment: Alignment.center,
                  width: SizeConfig.screenWidth,
                  height: SizeConfig.screenHeight,
                  child:TabBarView(
                      children: [
                        Pinding(),
                        Pinding(),
                      ],
                      controller: _tabController
                  ),
                ),
              )

            ],
          ),
        ),
      ],
    );
  }
}
