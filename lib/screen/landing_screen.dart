import 'package:entry/entry.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_login_ui/screen/login_screen.dart';
import 'package:flutter_login_ui/screen/signup_screen.dart';
import 'package:flutter_login_ui/widget/circle_top_border_clipper.dart';
import 'package:flutter_login_ui/widget/custom_button.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen>
    with SingleTickerProviderStateMixin {
  late final animationController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 800),
  );
  @override
  void initState() {
    animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          height: 50,
          child: ClipPath(
            clipper: PointsClipper(),
            child: Container(
              color: const Color(0xff06193f),
              height: 80,
            ),
          ),
        ),
        Positioned(
            top: 100,
            right: 100,
            left: 100,
            height: 50,
            child: Image.asset('image/logo.png')),
        Positioned(
          left: 0,
          right: 0,
          bottom: 200,
          height: 300,
          child: ClipPath(
            clipper: CircleTopBorderClipper(),
            child: Container(
              height: 150,
              color: const Color(0xffe8e9ec),
              width: double.infinity,
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 100,
          height: 300,
          child: ClipPath(
            clipper: CircleTopBorderClipper(),
            child: Container(
              color: const Color(0xffdfe0e4),
              height: 150,
              width: double.infinity,
            ),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          height: 300,
          child: ClipPath(
            clipper: CircleTopBorderClipper(),
            child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => const LoginScreen()));
                        },
                        text: 'Login'),
                    CustomButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (ctx) => const SignUpScreen()));
                        },
                        text: 'Sign up')
                  ],
                ),
                color: const Color(0xff06193f),
                height: 300),
          ),
        ),
      ],
    )));
  }
}
