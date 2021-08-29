import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:social_media_card/constants/constatns.dart';
import 'package:velocity_x/velocity_x.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppConstant.themeColor,
          title: "Create New Accoount".text.make(),
          centerTitle: true,
        ),
        backgroundColor: AppConstant.themeColor,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: [
                Container(
                  height: 150,
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Center(
                        child: CircleAvatar(
                          radius: 50,
                        ),
                      ),
                      Center(
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.camera_enhance),
                          color: Colors.white,
                        ),
                      )
                    ],
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
                          hint: "Full Name",
                          keyboardType: TextInputType.name,
                          borderColor: Colors.transparent,
                          icon: Icon(Icons.person),
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
                          keyboardType: TextInputType.emailAddress,
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
                          hint: "Phone Number",
                          keyboardType: TextInputType.phone,
                          borderColor: Colors.transparent,
                          icon: Icon(Icons.phone),
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
                          keyboardType: TextInputType.visiblePassword,
                          isPassword: true,
                          obscureText: false,
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
                        child: Container(
                            alignment: Alignment.center,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 8),
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 10),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: "Create Account".text.size(20).bold.make()),
                      ),
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
