import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_media_card/app.dart';
import 'package:social_media_card/constants/constatns.dart';
import 'package:social_media_card/screens/home.dart';
import 'package:social_media_card/screens/login.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: AppConstant.themeColor));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'Opinion',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
            body1: GoogleFonts.oswald(textStyle: textTheme.body1),
          ),
          accentColor: AppConstant.themeColor,
          primaryColor: AppConstant.themeColor,
          inputDecorationTheme: InputDecorationTheme(
            focusColor: AppConstant.themeColor,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide:
                    BorderSide(color: AppConstant.themeColor, width: 3)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide:
                    BorderSide(color: AppConstant.themeColor, width: 3)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide:
                    BorderSide(color: AppConstant.themeColor, width: 3)),
          )),
      home: Splash(),
    );
  }
}

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  bool loggedIn = false;

  @override
  void initState() {
    super.initState();
    initlization();
  }

  initlization() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool? loggin = prefs.getBool("loggedIn");
    if (loggin != null) {
      setState(() {
        loggedIn = loggin;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return loggedIn == true && loggedIn != null ? App() : Login();
  }
}
