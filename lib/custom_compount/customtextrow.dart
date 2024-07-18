import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  String text;
  String text2;
  CustomText({required this.text, required this.text2});
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      child: Row(
        children: [
          Expanded(
            child: Text(
              '$text',
              style: TextStyle(
                color: Color(0xFF2E2D2D),
                fontSize: 15,
                fontFamily: 'NATS',
                height: 1.20,
              ),
            ),
          ),
          Text(
            '$text2',
            style: TextStyle(
              color: Color(0xFF1EC92F),
              fontSize: 17,
              fontFamily: "NATS",
              height: 1.20,
            ),
          ),
        ],
      ),
    );
  }
}
