import 'package:flutter/material.dart';
import 'package:flutter_test_1/utility/size_config.dart';
import 'package:flutter_test_1/screen/my_order_screen/compnent/body.dart';
class MyOrderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: Body(),
    );
  }
}
