import 'package:flutter/material.dart';
import 'package:flutter_test_1/utility/size_config.dart';
import 'package:flutter_test_1/screen/login/component/body.dart';
class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: Body(),
    );
  }
}
