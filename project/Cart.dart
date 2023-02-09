import 'package:flutter/material.dart';
import 'package:freshwater/project/Home.dart';
import 'package:freshwater/project/bottom%20navigation.dart';
import 'package:freshwater/project/colors.dart';

class cart extends StatefulWidget {
  const cart({Key? key}) : super(key: key);

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: (){},
          icon: Icon(Icons.arrow_back,color: Colors.black,),),
          flexibleSpace: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text('My Cart',style: carts,),
              ),
            ],
          ),
        ),
        body: Container(
          color: Colors.white,
          child:
          Column(
            children: [
              SizedBox(height: 60,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 450,
                    width: 450,
                    child:Image(image: AssetImage('assets/gif.png')) ,
                  ),
                ],
              ),
              Text('Your cart is empty!',style: cartempty,),
              SizedBox(height: 30,),
              Container(
                height: 50,
                width: 250,
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>nav()));
                    },
                    child:Text('Shop now',style: cartbttn,)),
              )


            ],
          ),
        ),
      ),
    );
  }
}
