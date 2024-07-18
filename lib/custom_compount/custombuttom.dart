import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  String? image;
  String? text;
  CustomButtom({this.image, this.text});
  Widget build(BuildContext context) {
    return Container(
      width: 205,
      height: 60,
      padding: const EdgeInsets.all(17),
      decoration: ShapeDecoration(
        color: Color(0xFF9682B6),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
      ),
      child: Row(
        children: [
          Image.asset("$image"),
          SizedBox(
            width: 10,
          ),
          Text(
            '$text',
            style: TextStyle(
              color: Color(0xFFF4F4F4),
              fontSize: 19,
              fontFamily: 'NATS',
            ),
          ),
        ],
      ),
    );
  }
}
