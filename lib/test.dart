import 'package:flutter/material.dart';

class Test extends StatelessWidget {
  const Test({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
            height: 140,
            width: 361,
            decoration: BoxDecoration(
                color: Color(0xff9682B6),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(7),
                  topRight: Radius.circular(7),
                  bottomRight: Radius.circular(7),
                )),
            child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            'Need help?',
                            style: TextStyle(
                              fontFamily: 'NATS',
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Color(0xffF4F4F4),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 0,
                        ),
                        Container(
                          child: Text(
                            'Make an appointment or chat with us.',
                            style: TextStyle(
                                fontFamily: 'NATS',
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffF4F4F4)),
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                  ],
                ))));
  }
}
