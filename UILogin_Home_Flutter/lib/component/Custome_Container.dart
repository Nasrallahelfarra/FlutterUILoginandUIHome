import 'package:flutter/material.dart';
import 'package:flutter_test_1/utility/size_config.dart';

class CustomeContainer extends StatelessWidget {
  final Widget child;
  const CustomeContainer({
    Key key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      width: SizeConfig.screenWidth,
      decoration: BoxDecoration(
        color: Colors.transparent,
        //borderRadius: BorderRadius.circular(29),
      ),
      child: child,
    );
  }
}
