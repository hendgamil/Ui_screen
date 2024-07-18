import 'package:flutter/material.dart';
import 'package:flutter_image_slider/carousel.dart';
import 'package:google_fonts/google_fonts.dart';

import 'custom_compount/custombuttom.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  State<Screen3> createState() => _Screen3State();
}

int count = 1;

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Carousel(
            width: double.infinity,
            height: 360,
            activateIndicatorColor: Colors.purple,

            indicatorBarColor: Colors.white.withOpacity(0),
            // widgets
            items: [
              Image.asset(
                "assets/image/image1.jpeg",
                fit: BoxFit.cover,
                width: double.infinity,
              ),
              Container(
                color: Colors.green,
              ),
              Container(
                color: Colors.yellow,
              )
            ],
          ),
          SizedBox(
            height: 9,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              children: [
                Expanded(
                  child: Text('Spark',
                      style: GoogleFonts.nunito(
                        color: Color(0xFF2E2D2D),
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      )),
                ),
                Text(
                  '\$90',
                  style: TextStyle(
                    color: Color(0xff9682B6),
                    fontSize: 30,
                    fontFamily: "NATS",
                    height: 1.20,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Availability',
                    style: TextStyle(
                      color: Color(0xFF2E2D2D),
                      fontSize: 16,
                      fontFamily: 'NATS',
                      height: 1.20,
                    ),
                  ),
                ),
                Text(
                  'In Stock',
                  style: TextStyle(
                    color: Color(0xFF1EC92F),
                    fontSize: 18,
                    fontFamily: "NATS",
                    height: 1.20,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Rating',
                    style: TextStyle(
                      color: Color(0xFF2E2D2D),
                      fontSize: 16,
                      fontFamily: "NATS",
                      height: 1.20,
                    ),
                  ),
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
                Icon(
                  Icons.star,
                  color: Colors.yellow,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Divider(
              color: Colors.black.withOpacity(0.12),
              thickness: 2,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Quantity',
                    style: TextStyle(
                      color: Color(0xFF2E2D2D),
                      fontSize: 24,
                      fontFamily: "NATS",
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusDirectional.circular(12),
                    color: Colors.grey.withOpacity(0.3),
                  ),
                  child: Row(
                    children: [
                      TextButton(
                          onPressed: () {
                            setState(() {
                              if (count <= 1) {
                                count = 1;
                              } else {
                                count--;
                              }
                            });
                          },
                          child: Text(
                            "-",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: "NATS",
                            ),
                          )),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadiusDirectional.circular(11),
                            color: Colors.white.withOpacity(0.8),
                          ),
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                "$count",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontFamily: "NATS"),
                              )),
                        ),
                      ),
                      TextButton(
                          onPressed: () {
                            setState(() {
                              count++;
                            });
                          },
                          child: Text(
                            "+",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontFamily: "NATS",
                            ),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Total',
                    style: TextStyle(
                      color: Color(0xFF2E2D2D),
                      fontSize: 32,
                      fontFamily: 'NATS',
                      height: 1.20,
                    ),
                  ),
                ),
                Text(
                  '\$90',
                  style: TextStyle(
                    color: Color(0xff9682B6),
                    fontSize: 32,
                    fontFamily: "NATS",
                    height: 1.20,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Center(
            child: CustomButtom(
              image: "assets/image/shopping-cart.png",
              text: 'Add to Chart',
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Image.asset("assets/image/Frame 308.png"),
      //       label: "Home",
      //     ),
      //     BottomNavigationBarItem(
      //         icon: Image.asset("assets/image/Vector.png"), label: "Catalog"),
      //     BottomNavigationBarItem(
      //         icon: Image.asset("assets/image/Frame 312.png"), label: "Chat"),
      //     BottomNavigationBarItem(
      //         icon: Image.asset("assets/image/Frame 310.png"), label: "Chart"),
      //   ],
      // ),
    );
  }
}
