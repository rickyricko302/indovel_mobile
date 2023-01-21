import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:indovel_mobile/app/data/themes.dart';

import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  const SigninView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Themes.merahPrimary,
        appBar: AppBar(
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Themes.merahPrimary,
          ),
          toolbarHeight: 0,
        ),
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 50, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Animate(
                      child: Text(
                        "Login",
                        style: GoogleFonts.nunito(
                            fontSize: 30,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )
                          .animate()
                          .fadeIn(duration: Duration(seconds: 2))
                          .moveX(duration: Duration(seconds: 2)),
                    ),
                    Animate(
                      child: SvgPicture.asset(
                        "assets/images/login_image.svg",
                        width: 50,
                        height: 100,
                      ),
                    ).animate().fadeIn(duration: Duration(seconds: 2)),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
                      width: double.infinity,
                      padding: EdgeInsets.symmetric(horizontal: 35),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 30,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                "Email:",
                                style: GoogleFonts.nunito(
                                    color: Themes.hitam,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Card(
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              child: TextField(
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(16),
                                        borderSide: BorderSide.none)),
                              ),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                "Password:",
                                style: GoogleFonts.nunito(
                                    color: Themes.hitam,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Card(
                              elevation: 8,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16)),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(16),
                                        borderSide: BorderSide.none)),
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                    onPressed: () {},
                                    child: Text("Lupa password?"))
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Container(
                              width: double.infinity,
                              height: 45,
                              margin: EdgeInsets.symmetric(horizontal: 40),
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(30))),
                                  onPressed: () {},
                                  child: Text(
                                    "Login",
                                    style: GoogleFonts.nunito(fontSize: 18),
                                  )),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "ATAU",
                                  style: GoogleFonts.nunito(
                                      color: Colors.blueGrey,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white),
                                      onPressed: () {},
                                      child: SvgPicture.asset(
                                          "assets/images/googleicon.svg")),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                SizedBox(
                                  height: 50,
                                  width: 50,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.white),
                                      onPressed: () {},
                                      child: Image.asset(
                                          "assets/images/logoapple.png")),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 8,
                            )
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                        child: Container(
                      color: Colors.white,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Belum punya akun?"),
                            TextButton(
                                onPressed: () {}, child: Text("Daftar disini"))
                          ],
                        ),
                      ),
                    ))
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
