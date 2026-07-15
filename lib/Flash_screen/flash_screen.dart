import 'dart:async';
import 'package:flutter/material.dart';

import '../home_screen/home_screen.dart';

class FlashScreen extends StatefulWidget {
  const FlashScreen({super.key});

  @override
  State<FlashScreen> createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 10),
          () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(),
            Image.asset("assets/images/logo.png",height: 120,),
            Text("Google",style: TextStyle(fontSize: 45, fontWeight: FontWeight.w500),),
          ],
        ),
      ),
    );
  }
}
