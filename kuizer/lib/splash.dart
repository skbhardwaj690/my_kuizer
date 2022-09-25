import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kuizer/home/home.dart';

class Splasher extends StatefulWidget {
  const Splasher({Key? key}) : super(key: key);

  @override
  State<Splasher> createState() => _SplasherState();
}

class _SplasherState extends State<Splasher> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Image.asset(
                'images/bird2.png',
                width: 180,
                height: 200,
              ),
            ),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 30),
              child: const Text.rich(
                TextSpan(
                  text: 'Kuizer',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 30.0,
                    //fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: '?',
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 100),
              child: CircularProgressIndicator(
                strokeWidth: 1.5,
                color: Colors.deepPurple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
