import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:freshwater/project/Home.dart';
import 'package:freshwater/project/bottom%20navigation.dart';

import 'colors.dart';



class spl extends StatefulWidget {
  const spl({Key? key}) : super(key: key);

  @override
  State<spl> createState() => _splState();
}

class _splState extends State<spl> {
  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(splash: Column(
      children: [
        Image.asset("assets/fresh.png"),
        Text("Fresh Droup",style:fresh),
      ],
    ),
      nextScreen: const nav(),
      splashIconSize: 350,
      duration: 4000,
      backgroundColor: Colors.white70,
      animationDuration: const Duration(seconds: 1),
    );
  }
}
