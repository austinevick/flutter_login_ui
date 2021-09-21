import 'package:entry/entry.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_login_ui/widget/circle_container_items.dart';
import 'package:flutter_login_ui/widget/circle_top_border_clipper.dart';
import 'package:flutter_login_ui/widget/custom_button.dart';

import 'landing_screen.dart';

const textFieldStyle =
    TextStyle(color: Colors.white, fontWeight: FontWeight.w600);

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  late final animationController = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 000),
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
            const Positioned(
              left: -70,
              top: -100,
              child: Entry.scale(
                  duration: Duration(milliseconds: 200),
                  delay: Duration(milliseconds: 300),
                  child: CircleAvatar(radius: 110)),
            ),
            const Positioned(
                left: 10,
                child: CircleContainerItems(
                  text: 'Login',
                )),
            Positioned(
              left: 0,
              right: 0,
              bottom: 180,
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
              height: 330,
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
              height: 380,
              child: ClipPath(
                clipper: CircleTopBorderClipper(),
                child: Container(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(height: 90),
                      Text('Email or phone number', style: textFieldStyle),
                      TextField(
                          decoration: InputDecoration(
                              fillColor: Color(0xff1e2c4c),
                              filled: true,
                              focusedBorder: InputBorder.none,
                              hintStyle: TextStyle(color: Colors.grey),
                              hintText: 'Type here')),
                      SizedBox(height: 22),
                      Text('Password', style: textFieldStyle),
                      TextField(
                          decoration: InputDecoration(
                              fillColor: Color(0xff1e2c4c),
                              focusedBorder: InputBorder.none,
                              filled: true,
                              hintStyle: TextStyle(color: Colors.grey),
                              hintText: 'Type here')),
                      Spacer(),
                      Center(
                        child: CustomButton(
                          text: 'Login',
                        ),
                      )
                    ],
                  ),
                  color: const Color(0xff06193f),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
