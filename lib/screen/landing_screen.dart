import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_login_ui/screen/login_screen.dart';
import 'package:flutter_login_ui/screen/signup_screen.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  int selectedIndex = 0;
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
          height: 300,
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
          height: 300,
          child: ClipPath(
            clipper: OvallTopBorderClipper(),
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

class CustomButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? text;
  const CustomButton({
    Key? key,
    this.onPressed,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 250,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100), color: Colors.white),
        height: 50,
        child: MaterialButton(
          onPressed: onPressed,
          shape: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
          child: Text(
            text!,
            style: const TextStyle(color: Colors.blue, fontSize: 18),
          ),
        ),
      ),
    );
  }
}

class OvallTopBorderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, 70);
    path.quadraticBezierTo(size.width / 4, 0, size.width / 2, 0);
    path.quadraticBezierTo(size.width - size.width / 4, 0, size.width, 70);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
