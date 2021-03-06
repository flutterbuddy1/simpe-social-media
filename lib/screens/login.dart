import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_media_card/app.dart';
import 'package:social_media_card/constants/constatns.dart';
import 'package:social_media_card/screens/home.dart';
import 'package:social_media_card/screens/register.dart';
import 'package:velocity_x/velocity_x.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppConstant.themeColor,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                "Opinion".text.size(50).white.make(),
                Container(
                  height: 250,
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/img/logo.png",
                    height: 150,
                    width: 150,
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: VxTextField(
                          hint: "Email Address",
                          borderColor: Colors.transparent,
                          icon: Icon(Icons.mail),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 15),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                        child: VxTextField(
                          hint: "Password",
                          isPassword: true,
                          borderColor: Colors.transparent,
                          icon: Icon(Icons.lock),
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                        alignment: Alignment.centerRight,
                        child: GestureDetector(
                          child: "Forgot Password ?".text.white.make(),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushReplacement(context,
                              CupertinoPageRoute(builder: (_) => App()));
                        },
                        child: Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 8),
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: "Login".text.size(20).bold.make()),
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            "Don't Have an Account ? ".text.white.make(),
                            GestureDetector(
                              onTap: () {
                                FocusScopeNode currentFocus =
                                    FocusScope.of(context);

                                if (!currentFocus.hasPrimaryFocus) {
                                  currentFocus.unfocus();
                                }
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (_) => Register()));
                              },
                              child: "Click here".text.amber200.make(),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
