import 'dart:async';

import 'package:flutter/material.dart';
import 'package:raterprog/views/MyHomePage.dart';

class flashScreen extends StatefulWidget {
  const flashScreen({Key? key}) : super(key: key);

  @override
  State<flashScreen> createState() => _flashScreenState();
}

class _flashScreenState extends State<flashScreen> {
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => MyHomePage(
            title: '',
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 179, 200, 217),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset("assets/images/rate0.png"),
          SizedBox(height: 45),
          CircularProgressIndicator(
            color: Colors.amber,
          )
        ],
      )),
    );
  }
}
