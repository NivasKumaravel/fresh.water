import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:freshwater/project/Cart.dart';
import 'package:intl/intl.dart';

import 'colors.dart';

class products extends StatefulWidget {
  const products({Key? key}) : super(key: key);

  @override
  State<products> createState() => _productsState();
}

class _productsState extends State<products> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace:
          Container(
            color: Colors.white,
          ),
          leading: IconButton(onPressed: (){
            Navigator.of(context).pop();
          },
            icon:const Icon(Icons.arrow_back,color: Colors.black,),
          ),
        ),
        body:
        SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.topRight,
                    colors: [
                      Colors.greenAccent.shade100,
                      Colors.green.shade400,
                    ],
                  ),
                ),
                height:50,
                width: double.infinity,
                child: Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    SizedBox(width: 20,),
                    Text("Select a location to see water avilability",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,color: Colors.black),)
                  ],
                ),
              ),
              Container(
                height: 122,
                width: double.infinity,
                color: Colors.white70,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child:
                      Row(
                        children: [
                          Icon(Icons.star_outlined,color: Colors.yellow.shade400,size:18 ,),
                          Icon(Icons.star_outlined,color: Colors.yellow.shade400,size:18),
                          Icon(Icons.star_outlined,color: Colors.yellow.shade400,size:18),
                          Icon(Icons.star_outlined,color: Colors.yellow.shade400,size:18,),
                          Icon(Icons.star_outline,color:Colors.yellow.shade400,size:18),
                          Text("61,630",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          Text("Bisleri International (formerly Parle Exports and Parle Bisleri) is an Indian company which is best known for the eponymous brand of bottled water.." ,
                            style: TextStyle(fontWeight: FontWeight.w600,fontSize: 19,color:Colors.black),),
                        ],
                      ),
                    ),
                  ],
                ),

              ),

              Container(
                height: 500,
                width: double.infinity,
                color: Colors.white70,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left:0,
                      height: 500,
                      width: 500,
                      child: Container(
                        width: double.infinity,

                        child: Center(
                          child:
                          CarouselSlider.builder(itemCount: 5,

                              itemBuilder: (context,index, realIndex){
                                return Container(
                                  height: 400,
                                  width: 500,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage('assets/bisleri.png'),
                                        fit: BoxFit.cover,
                                      )
                                  ),
                                );
                                },
                              options: CarouselOptions(
                                aspectRatio:16/16,
                                scrollDirection: Axis.horizontal,
                                autoPlay: true,


                              ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 5,
                        left: 5,
                        child:
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                           image: DecorationImage(
                             image: AssetImage('assets/bislerilogo.png')
                           )
                          ),


                        ),
                    ),
                    Positioned(
                        bottom: 5,
                        left: 5,
                        child:
                        Container(

                            child: Text('Bisleri',style: bislerip,))),
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Container(
                height: 100,
                color: Colors.white,
                width: double.infinity,
                child:
                Column(
                  children: [
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Description.",style: description),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("**Fast delivery in Saravanampatti Area** \n Freshness of Bisleri at your doorstep ",
                          style: descrip,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8,),
              Container(
                color: Colors.white70,
                width: double.infinity,
                child:
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Text('Bisleri 20 litre',style: bis,),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [

                          Text(NumberFormat.simpleCurrency(locale: 'hi-IN',).format(60),
                            style: rate),

                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Text("Good Jar Quality and Water Quality",style: jar),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Icon(Icons.location_on_outlined),
                          SizedBox(width: 5,),
                          Text("Select delivery location",style: location),


                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Container(
                            height: 40,
                            width: 85,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey.shade300,
                                border: Border.all(width: 1,color: Colors.black)
                            ),
                            child: Row(
                              children: [
                                SizedBox(width: 5,),
                                Text("Qty:  1",style: TextStyle(
                                    fontSize: 15,fontWeight: FontWeight.w700
                                ),),
                                Icon(Icons.keyboard_arrow_down_sharp,color: Colors.black,size: 30,),

                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 60,
                              width: 180,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.green,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [Text("Refill Jar",style: TextStyle(
                                  fontSize: 20,fontWeight: FontWeight.w700,color:
                                Colors.white,
                                ),)
                                ],
                              ),

                            ),
                          ),
                          SizedBox(width: 20,),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>cart()));
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                children: [
                                  Container(
                                    height: 60,
                                    width: 180,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.cyan.shade500,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [Text("Buy Jar",style: TextStyle(
                                        fontSize: 20,fontWeight: FontWeight.w700,color:
                                      Colors.white,
                                      ),)
                                      ],
                                    ),

                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Icon(Icons.lock,color: Colors.grey.shade700,),
                          SizedBox(width: 10,),
                          Text("Secure transaction",style: TextStyle(
                              fontSize: 18,fontWeight: FontWeight.w600,color:
                          Colors.cyanAccent.shade700),),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          Text("Sold by",style: sold),
                          SizedBox(width: 4,),
                          Text("Bisleri",style:sold1),
                          SizedBox(width: 4,),
                          Text("and",style: sold2),
                          SizedBox(width: 4,),
                          Text("Fulfilled by Fresh Drop.",style:sold3),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),

            ],
          ),
        ),
        backgroundColor: Colors.black12,

      ),
    );
  }
}
