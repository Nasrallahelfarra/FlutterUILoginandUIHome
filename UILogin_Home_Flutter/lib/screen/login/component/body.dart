import 'package:flutter/material.dart';
import 'package:flutter_test_1/helper/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test_1/component/CustomeText.dart';
import 'package:flutter_test_1/component/CustomTextFilled.dart';
import 'package:flutter_test_1/component/CustomTextFilledPassword.dart';
import 'package:flutter_test_1/utility/size_config.dart';
import 'package:flutter_test_1/helper/Messages.dart';
import 'package:flutter_test_1/screen/login/component/item_forget_pss.dart';
import 'package:flutter_test_1/screen/login/component/item_buttom_login.dart';
import 'package:flutter_test_1/screen/login/component/item_buttom_Social.dart';
import 'package:flutter_test_1/screen/login/component/item_footer.dart';
import 'package:flutter_test_1/screen/main_screen/main_screen.dart';

import 'package:get/get.dart';
class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  String cheack_email=null;
  String imageCheack='assets/icons/cheack_email.svg';
  TextEditingController _textEditingControlleEmail;
  TextEditingController _textEditingControllePass;
  @override
  void initState() {
    // TODO: implement initState
    _textEditingControlleEmail=TextEditingController();
    _textEditingControllePass=TextEditingController();

    super.initState();
  }
  @override
  void dispose() {
    _textEditingControlleEmail.dispose();
    _textEditingControllePass.dispose();
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            left: 0,
            top: 50,
            child:  SvgPicture.asset(
              'assets/icons/ceracl.svg',
              height: getProportionateScreenWidth(200),
             color: Color(0xFF707070).withOpacity(0.02),
             // width: getProportionateScreenWidth(12),
            ),
            ),

        SingleChildScrollView(
          child: Container(
            width: SizeConfig.screenWidth,
            height: SizeConfig.screenHeight,
            margin: EdgeInsets.only(top:getProportionateScreenHeight(140) ),
            child: Column(
              mainAxisAlignment:MainAxisAlignment.start ,
              crossAxisAlignment:CrossAxisAlignment.start ,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),

                  child: Column(
                    mainAxisAlignment:MainAxisAlignment.start ,
                    crossAxisAlignment:CrossAxisAlignment.start ,
                    children: [
                      CustomeText(
                        title:'تسجيل الدخول',
                        fontSize: 30,
                        color: Colors.black,
                      ),
                      SizedBox(height: 10,),
                      CustomeText(
                        title:'مرحباً مرة أخرى في ايزي باس',
                        fontSize: 15,
                        color: Colors.black,

                      ),
                      SizedBox(height: 30,),
                      CustomeText(title: kEmail,fontSize: 14,color: Colors.black,),
                      SizedBox(height: 10,),
                      BildeTextEmail(),
                      SizedBox(height: 10,),
                      ItemForGetPass(),
                      SizedBox(height: 10,),
                      BildeTextPassword(),
                    ],
                  ),
                ),
                SizedBox(height: 20,),

                Column(
                  children: [
                    ItemButtom(press: (){
                      Get.to(MainScreen());
                    },),
                    SizedBox(height: 30,),
                    CustomeText(title: 'أو قم بدخول عبر',fontSize: 14,color: Colors.black,),
                    SizedBox(height: 30,),
                    ItemButtomSocial(),
                    SizedBox(height: 40,),
                    ItemFooter()

                  ],
                ),

              ],
            ),


          ),
        ),
      ],
    );
  }
  Widget BildeTextEmail(){
    return  CustomTextFilled(
      lable: kEmail ,
      type: 2,
      hintText: kEmail,
      iconsvg: imageCheack,
      controller: _textEditingControlleEmail,
      onChanged: (value) {
        if (value.isEmpty) {

          return kEmailNullError;
        } else if (GetUtils.isEmail(value)) {
          cheack_email=null;

          return kInvalidEmailError;

        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          return kEmailNullError;
        } else if (!GetUtils.isEmail(value)) {
          return kInvalidEmailError;
        }
        return null;
      },


    );



  }
  Widget BildeTextPassword(){
    return  CustomTextFilledPassword(
      lable: kPassword ,
      type: 2,

      hintText: kPassword,
      controller: _textEditingControllePass,
      onChanged: (value) {
        if (value.isNotEmpty) {
          return kPassNullError;
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          return kPassNullError;
        }
        return null;
      },


    );



  }
}
