import 'package:flutter/material.dart';
import 'package:flutter_test_1/utility/size_config.dart';
import 'compnent/body.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: Body(),
    );
  }
}
