import 'package:final_pro_nc_screen3/screen3.dart';
import 'package:flutter/material.dart';

class Buttomscreen extends StatelessWidget {
  const Buttomscreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello screen"),
      ),
      body: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (BuildContext context) => Screen3(),
          ));
        },
        child: Text("click here"),
      ),
    );
  }
}
