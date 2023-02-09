import 'package:flutter/material.dart';
import 'package:freshwater/project/Cart.dart';
import 'package:freshwater/project/Home.dart';
import 'package:freshwater/project/Product%20details.dart';
import 'package:freshwater/project/bottom%20navigation.dart';
import 'package:freshwater/project/splash.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveWrapper.builder(
          child,
          maxWidth: 1200,
          minWidth: 480,
          defaultScale: true,
          breakpoints: [
            ResponsiveBreakpoint.resize(480, name: MOBILE),
            ResponsiveBreakpoint.autoScale(1700, name: TABLET),
            ResponsiveBreakpoint.resize(1200, name: DESKTOP),
            ResponsiveBreakpoint.autoScale(2460, name: "4k"),
          ],
          background: Container(color: Color(0xFFF5F5F5))),
      initialRoute: "/",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const spl(),
    );
  }
}
