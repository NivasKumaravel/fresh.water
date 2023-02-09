
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:freshwater/project/Product%20details.dart';

import 'colors.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black12,

        body:NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (BuildContext contex,bool innerBoxIsScrolled){
            return <Widget>[
              SliverAppBar(
                expandedHeight: 599,
                leading: IconButton(onPressed: (){
                  Navigator.of(context).pop();
                },
                  icon:const Icon(Icons.notifications,size: 30,),
                ),
                actions: [
                  Icon(Icons.more_vert_outlined,size: 30,)
                ],
                floating: true,
                pinned: true,
                forceElevated: innerBoxIsScrolled,
                backgroundColor: Colors.black,
                flexibleSpace: FlexibleSpaceBar(
                  background:
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.blueAccent,
                            Colors.blue.shade700,
                            Colors.blue.shade300,
                          ]
                      ),
                    ),
                    child:
                    Container(
                      width: double.infinity,
                      child: Column(
                        children: [
                          SizedBox(height: 50,),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              width: double.infinity,
                              child:
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child:
                                    Container(
                                      height:50,
                                      width: 450,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white,
                                      ),
                                      child:
                                      Row(
                                        children: [
                                          SizedBox(width: 10,),
                                          Icon(Icons.search,color: Colors.black,),
                                          SizedBox(width: 20,),
                                          Text("Search for Jars, Brands and More",style: search),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child:
                            Container(
                              width:double.infinity,
                              child:
                              CarouselSlider.builder(
                                itemCount: list3.length,
                                itemBuilder: (context, index, realIndex){
                                  return Container(
                                    width: 460,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        image: DecorationImage(
                                          image: AssetImage(list3[index].image4),
                                          fit: BoxFit.cover,
                                        )
                                    ),
                                  );
                                },
                                options: CarouselOptions(
                                  enlargeCenterPage: true,
                                  scrollDirection: Axis.horizontal,
                                  autoPlay: true,
                                  height: 250,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20,),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Container(
                              height: 150,
                              child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount:slvi.length,
                                shrinkWrap: true,
                                itemBuilder: (BuildContext context,index)
                                {
                                  return
                                    Container(
                                      margin: EdgeInsets.all(6),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(10),
                                            child: Image(image: AssetImage(slvi[index].image1),
                                              width: 105,
                                              height: 115,
                                              fit: BoxFit.cover,),
                                          ),
                                          Spacer(),
                                          Text(slvi[index].text1,style: slvlst,)
                                        ],
                                      ),
                                    );
                                },
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ];


          }, body: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>products()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 350,
                    width: double.infinity,
                    color: Colors.white,
                    child:
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            children: [
                              Text('Our Partners',style: partners,),
                              Spacer(),
                              Text('View ALL',style: viewall,),
                            ],
                          ),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 120,
                            width: double.infinity,
                            child:
                            ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount:list1.length,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context,index)
                              {
                                return
                                  Card(
                                    elevation: 10,
                                    child: Container(
                                      margin: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image(image: AssetImage(list1[index].image2),
                                          width: 90,
                                          fit: BoxFit.cover,),
                                      ),
                                    ),
                                  );
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            height: 120,
                            width: double.infinity,
                            child:
                            ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount:list2.length,
                              shrinkWrap: true,
                              itemBuilder: (BuildContext context,index)
                              {
                                return
                                  Card(
                                    elevation: 10,
                                    child: Container(
                                      margin: EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(10),
                                        child: Image(image: AssetImage(list2[index].image3),
                                          width: 90,
                                          fit: BoxFit.cover,),
                                      ),
                                    ),
                                  );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Text('Water by Brands',style: brands,),
                          Spacer(),
                          Container(
                            height: 40,
                            width: 110,
                            child: ElevatedButton(
                              onPressed: (){},
                              child: Text('View ALL',style: (TextStyle(fontSize: 17)),),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        children: [
                          Text('Choose from Top Water Brands',style: top,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>products()));
                },
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Container(
                    height: 800,
                    width:450,
                    child:
                    ListView.builder(
                      // physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount:PI.length,
                      shrinkWrap: false,
                      itemBuilder: (BuildContext context,index)
                      {
                        return
                          Card(
                            elevation: 5,
                            child: Container(
                              margin: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(5),
                                child: Row(
                                  children: [
                                    Container(
                                      height:200,
                                      width: 200,
                                      decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(PI[index].image)
                                            )
                                        ),

                                    ),
                                    SizedBox(width: 20,),
                                    Column(
                                      children: [
                                       Padding(
                                         padding: const EdgeInsets.all(10.0),
                                         child: Text(PI[index].text,style: prd,),
                                       ),

                                        Text(PI[index].text1,style: capacity,),
                                        Text(PI[index].text2,style: price,),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                      },
                    ),
                  ),
                ),
              ),
              SizedBox(height: 80,),
            ],
          ),
        ),
        ),

      ),
    );
  }
}
class product{
  String? image;
  String? text;
  String? text1;
  String? text2;
  product(this.image,this.text,this.text1,this.text2);
}
List PI = modelData.map((e) => product(e['image'],e['text'],e['text1'],e['text2'])).toList();
var modelData = [
  {'image':'assets/bisleri.png','text':'Bisleri','text1':'20 Litre Jar','text2':'₹60/- Product Price'},
  {'image':'assets/aquafina.png','text':'Aquafina','text1':'20 Litre Jar','text2':'₹80/- Product Price'},
  {'image':'assets/tata.png','text':'Tata Water Plus','text1':'20 Litre Jar','text2':'₹75/- Product Price'},
  {'image':'assets/golden.png','text':'Golden Valley','text1':'20 Litre Jar','text2':'₹65/- Product Price'},
  {'image':'assets/kinley.png','text':'Kinley','text1':'20 Litre Jar','text2':'₹70/- Product Price'},
  {'image':'assets/kelvin.png','text':'Aqua Kelvin','text1':'20 Litre Jar','text2':'₹50/- Product Price'},
];

class slv{
  String? image1;
  String? text1;

  slv(this.image1,this.text1,);
}
List slvi = modelData1.map((e) => slv(e['image1'],e['text1'])).toList();
var modelData1= [
  {'image1':'assets/buy.png','text1': 'Buy water'},
  {'image1':'assets/refill.png','text1': 'Refilling Water'},
  {'image1':'assets/coupns.png','text1': 'Coupon'},
  {'image1':'assets/water.png','text1': 'Track water'},
];

class partner{
  String? image2;

  partner(this.image2,);
}
List list1 = modelData2.map((e) => partner(e['image2'],)).toList();
var modelData2= [
  {'image2':'assets/bislerilogo.png'},
  {'image2':'assets/aquafinalogo.png'},
  {'image2':'assets/easternlogo.png'},
  {'image2':'assets/kelvinlogo.png'},
];

class pat{
  String? image3;

  pat(this.image3,);
}
List list2 = modelData3.map((e) => pat(e['image3'],)).toList();
var modelData3= [
  {'image3':'assets/kinleylogo.png'},
  {'image3':'assets/officerslogo.png'},
  {'image3':'assets/tatalogo.png'},
  {'image3':'assets/goldenlogo.png'},
];

class ban{
  String? image4;

  ban(this.image4,);
}
List list3 = modelData4.map((e) => ban(e['image4'],)).toList();
var modelData4= [

  {'image4':'assets/bn3.png'},
  {'image4':'assets/bn4.png'},

  {'image4':'assets/bn6.png'},
];

