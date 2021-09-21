import 'package:entry/entry.dart';
import 'package:flutter/material.dart';

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
    return Entry.scale(
      duration: const Duration(milliseconds: 200),
      delay: const Duration(milliseconds: 300),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 300,
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
      ),
    );
  }
}
