import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_login_ui/screen/landing_screen.dart';
import 'package:flutter_login_ui/screen/login_screen.dart';
import 'package:flutter_login_ui/widget/circle_container_items.dart';
import 'package:flutter_login_ui/widget/circle_top_border_clipper.dart';
import 'package:flutter_login_ui/widget/custom_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

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
                  text: 'Signup',
                )),
            Positioned(
              right: 0,
              left: 0,
              bottom: 0,
              height: MediaQuery.of(context).size.height / 1.4,
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
                              focusedBorder: InputBorder.none,
                              filled: true,
                              hintStyle: TextStyle(color: Colors.grey),
                              hintText: 'Type here')),
                      SizedBox(height: 22),
                      Text('Username', style: textFieldStyle),
                      TextField(
                          decoration: InputDecoration(
                              fillColor: Color(0xff1e2c4c),
                              focusedBorder: InputBorder.none,
                              filled: true,
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
                      SizedBox(height: 22),
                      Text('Confirm password', style: textFieldStyle),
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
                          text: 'Signup',
                        ),
                      )
                    ],
                  ),
                  color: const Color(0xff06193f),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
