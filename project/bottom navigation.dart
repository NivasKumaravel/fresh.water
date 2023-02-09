import 'package:flutter/material.dart';
import 'package:freshwater/project/Cart.dart';
import 'package:freshwater/project/Home.dart';

class nav extends StatefulWidget {
  const nav({Key? key}) : super(key: key);

  @override
  State<nav> createState() => _navState();
}

class _navState extends State<nav> {

  int _a = 0;

  final pages = [
   home(),
    cart(),
  ];

  void b(index)
  {
    setState(() {
      _a=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
body:
ListView(
  children: [
    Container(
      height: MediaQuery.of(context).size.height,
      child: pages[_a],
    ),

  ],
),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled),label:"Home"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_rounded),label: "Cart"),
          ],
          currentIndex: _a,
          onTap: b,
        ),
    );
  }
}
