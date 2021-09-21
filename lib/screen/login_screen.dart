import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'landing_screen.dart';

const textFieldStyle =
    TextStyle(color: Colors.white, fontWeight: FontWeight.w600);

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            const Positioned(
                left: -70,
                top: -100,
                child: CircleAvatar(
                  radius: 110,
                )),
            const Positioned(
                left: 10,
                child: OvalContainerItems(
                  text: 'Login',
                )),
            Positioned(
              left: 0,
              right: 0,
              bottom: 180,
              height: 300,
              child: ClipPath(
                clipper: OvallTopBorderClipper(),
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
                clipper: OvallTopBorderClipper(),
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
                clipper: OvallTopBorderClipper(),
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

class OvalContainerItems extends StatelessWidget {
  final String? text;
  const OvalContainerItems({
    Key? key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Row(
              children: const [
                Icon(Icons.keyboard_backspace, color: Colors.white),
                SizedBox(
                  width: 8,
                ),
                Text(
                  'Back',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Text(
            text!,
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
