
import 'dart:async';
import 'dart:convert' ;
import 'dart:io';


import 'package:flutter_test_1/data/local/SharedPreferencees.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../main.dart';

class DataClientApi{
  static String lang="en";
  static DataClientApi apiClientInstance=null;


  static DataClientApi getInstance(){
    if(apiClientInstance==null){
      apiClientInstance=new DataClientApi();
    }
    lang=PreferenceUtils.getLang();
    return apiClientInstance;
  }
  Map<String, String> Header(int typeToken){
    Map<String, String> headers;
    if(typeToken==0){
      headers={
          'Content-Type': 'application/json',
      };
   }else if(typeToken==1) {
      headers={
        'Content-Type': 'application/json',
        'Authorization':'TOKEN_Url',
      };
    }
    else if(typeToken==2) {

      headers={
        'Content-Type': 'application/json',
        'Authorization':'Bearer ${PreferenceUtils.getToken()}',
      };
      print("Authorization");
      print("Bearer "+PreferenceUtils.getToken());
    }

      return headers;


   }

}