import 'package:flutter/material.dart';
import 'package:flutter_test_1/screen/home_screen/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'helper/Messages.dart';
import 'data/local/SharedPreferencees.dart';
import 'helper/theme.dart';
import 'package:flutter_test_1/screen/my_order_screen/my_order_screen.dart';
import 'package:get/get.dart';
import 'package:flutter_test_1/screen/main_screen/main_screen.dart';
import 'package:flutter_test_1/screen/login/screen_login.dart';
main() async {

  int type=0;
  WidgetsFlutterBinding.ensureInitialized();
  PreferenceUtils.init();
  SharedPreferences prefs = await SharedPreferences.getInstance();
  runApp(MyApp(lang: (prefs.getString(PreferenceUtils.Lang)==null)?"ar":prefs.getString(PreferenceUtils.Lang),));
}

String titleBar="";
class MyApp extends StatefulWidget {

  String lang;
  MyApp({this.lang}); // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState(lang,1);
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  String lang;
  final int type;


  _MyAppState(this.lang, this.type);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(home: Login(),
        theme: theme(),
        title: 'Flutter Demo',
        translations: Messages(),
        // your translations
        locale: Locale('$lang'),
        fallbackLocale: Locale('$lang'),
        onGenerateRoute: (RouteSettings settings) {
          if (settings.name == '/') {
            return new MaterialPageRoute<Null>(
              settings: settings,
              builder: (_) => new MyApp(lang: lang,),
              maintainState: false,
            );
          }
          return null;
        }
    );
  }

}
