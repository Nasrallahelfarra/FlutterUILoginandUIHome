

import 'dart:convert';

import 'package:flutter_test_1/data/model/User.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferenceUtils {
   static final String USER = "user";
   static final String Lang = "lang";
   static final String IS_LOGIN = "isLogin";
   static final String Walkthrough = "Walkthrough";
   static final String TOKENUSER = "TOKEN";
   static final String CartGuset = "CartGuset";
   static final String CartCustomer = "CartCustomer";
   static final String CountrySelect = "Country";
   static final String CurrencySelect = "CurrencySelect";

   static PreferenceUtils sharedPreference = null;
   static SharedPreferences sharedPreferences;
   static Future<SharedPreferences> get _instance async => _prefsInstance ??= await SharedPreferences.getInstance();
   static SharedPreferences _prefsInstance;

   // call this method from iniState() function of mainApp().
   static Future<SharedPreferences> init() async {
     _prefsInstance = await _instance;
     return _prefsInstance;
   }
   static Future<void> setCartCustomer( String value) async {
     var prefs = await _instance;
     prefs?.setString(CartCustomer, value);
   }
   static String getCartCustomer() {
     if(_prefsInstance.getString(CartCustomer)==null){
       return "";
     }else{
       return  _prefsInstance.getString(CartCustomer);

     }
   }
   static Future<void> setUser( User value) async {
     var prefs = await _instance;
     var json = jsonEncode(value.toJson());
     prefs.setString(USER, json);
   }
   static User getUser (){
     if(_prefsInstance.getString(USER)==null){
       return null;
     }else{
       return User.fromJson(jsonDecode(_prefsInstance.getString(USER)));

     }
   }

   static Future<void> setLang( String value) async {
     var prefs = await _instance;
     prefs?.setString(Lang, value);

   }
   static String getLang() {
     if( _prefsInstance.getString(Lang)==null){
       return "en";
     }else{
       return  _prefsInstance.getString(Lang) ;

     }
   }
   static String getToken() {
     if(  _prefsInstance.getString(TOKENUSER)==null){
       return "";
     }else{
       return   _prefsInstance.getString(TOKENUSER) ;

     }
   }

   static Future<void> setToken( String value) async {
     var prefs = await _instance;
     prefs?.setString(TOKENUSER, value);
   }
   static bool getLogin() {
     if(  _prefsInstance.getBool(IS_LOGIN)==null){
       return false;
     }else{
       return _prefsInstance.getBool(IS_LOGIN) ;

     }
   }

   static Future<bool> setLogin( bool value) async {
     var prefs = await _instance;
     return prefs?.setBool(IS_LOGIN, value) ?? Future.value(false);
   }
   static bool getWalkthrough() {
     if(  _prefsInstance.getBool(Walkthrough)==null){
       return false;
     }else{
       return   _prefsInstance.getBool(Walkthrough) ;

     }
   }

   static Future<bool> setWalkthrough( bool value) async {
     var prefs = await _instance;
     return prefs?.setBool(Walkthrough, value) ?? Future.value(false);
   }
}