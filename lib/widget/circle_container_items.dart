import 'package:entry/entry.dart';
import 'package:flutter/material.dart';

class CircleContainerItems extends StatelessWidget {
  final String? text;
  const CircleContainerItems({
    Key? key,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Entry.scale(
      duration: const Duration(milliseconds: 200),
      delay: const Duration(milliseconds: 300),
      child: Padding(
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
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
