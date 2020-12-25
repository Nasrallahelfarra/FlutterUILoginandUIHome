import 'package:flutter/material.dart';
import 'package:fdottedline/fdottedline.dart';
import 'package:flutter_test_1/utility/size_config.dart';

class LineDote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width:SizeConfig.screenWidth ,
      child: FDottedLine(
        color: Colors.black,
        width:SizeConfig.screenWidth ,
        strokeWidth: 1,
        dottedLength: 10.0,
        space: 2.0,
      ),
    );
  }
}
