import 'package:flutter/material.dart';
import '../login_create_add/appbar.dart';
import '../login_create_add/sidebar.dart';
class RewardPoints extends StatefulWidget {
  @override
  State<RewardPoints> createState() =>_RewardPointsState();
}
class _RewardPointsState extends State<RewardPoints> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:buildAppBar(context),
      endDrawer: const CornerNavBar(),
      body: ListView(
        children: [
          ExpansionTile(
            initiallyExpanded:true,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Airlines',style: TextStyle( fontSize: 30,fontWeight: FontWeight.bold),),
                Icon(Icons.flight,size: 40),
              ],
            ),
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/images/aa.png',height: 140,width: 160,),
                  Container(
                    height: 60,
                    width: 160,
                    margin: const EdgeInsets.only(left: 25,top: 10,right:25),
                    decoration:BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),),
                    child: Column(

                      children: [
                        SizedBox( height: 6,),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              const Text("Reward Name"),
                            ]

                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            const Text("Account Numbers"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            const Text("Miles Available"),
                          ],
                        ),



                      ],
              ),
                  ),
              ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/images/avelo.png',height: 140,width: 160,),
                  Container(
                    height: 60,
                    width: 160,
                    margin: const EdgeInsets.only(left: 25,top: 10,right:25),
                    decoration:BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),),
                    child: Column(

                      children: [
                        SizedBox( height: 6,),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              const Text("Reward Name"),
                            ]

                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            const Text("Account Numbers"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            const Text("Miles Available"),
                          ],
                        ),



                      ],
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/images/breeze.png',height: 140,width: 160,),
                  Container(
                    height: 60,
                    width: 160,
                    margin: const EdgeInsets.only(left: 25,top: 10,right:25),
                    decoration:BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),),
                    child: Column(

                      children: [
                        SizedBox( height: 6,),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              const Text("Reward Name"),
                            ]

                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            const Text("Account Numbers"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            const Text("Miles Available"),
                          ],
                        ),



                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/images/delta.png',height: 140,width: 160,),
                  Container(
                    height: 60,
                    width: 160,
                    margin: const EdgeInsets.only(left: 25,top: 10,right:25),
                    decoration:BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),),
                    child: Column(

                      children: [
                        SizedBox( height: 6,),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              const Text("Reward Name"),
                            ]

                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            const Text("Account Numbers"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            const Text("Miles Available"),
                          ],
                        ),



                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          ExpansionTile(

            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Hotels',style: TextStyle( fontSize: 30,fontWeight: FontWeight.bold),),
                Icon(Icons.hotel),
              ],

            ),

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/images/hilton.png',height: 140,width: 160,),
                  Container(
                    height: 60,
                    width: 160,
                    margin: const EdgeInsets.only(left: 25,top: 10,right:25),
                    decoration:BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),),
                    child: Column(

                      children: [
                        SizedBox( height: 6,),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              const Text("Reward Name"),
                            ]

                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            const Text("Account Numbers"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            const Text("Miles Available"),
                          ],
                        ),



                      ],
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/images/ihg.png',height: 140,width: 160,),
                  Container(
                    height: 60,
                    width: 160,
                    margin: const EdgeInsets.only(left: 25,top: 10,right:25),
                    decoration:BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),),
                    child: Column(

                      children: [
                        SizedBox( height: 6,),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              const Text("Reward Name"),
                            ]

                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            const Text("Account Numbers"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            const Text("Miles Available"),
                          ],
                        ),



                      ],
                    ),
                  ),
                ],
              ),


            ],

          ),
          ExpansionTile(

            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Rentals Cars',style: TextStyle( fontSize: 30,fontWeight: FontWeight.bold),),
                Icon(Icons.car_rental),
              ],

            ),

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/images/hilton.png',height: 140,width: 160,),
                  Container(
                    height: 60,
                    width: 160,
                    margin: const EdgeInsets.only(left: 25,top: 10,right:25),
                    decoration:BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),),
                    child: Column(

                      children: [
                        SizedBox( height: 6,),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              const Text("Reward Name"),
                            ]

                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            const Text("Account Numbers"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            const Text("Miles Available"),
                          ],
                        ),



                      ],
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/images/ihg.png',height: 140,width: 160,),
                  Container(
                    height: 60,
                    width: 160,
                    margin: const EdgeInsets.only(left: 25,top: 10,right:25),
                    decoration:BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(15),),
                    child: Column(

                      children: [
                        SizedBox( height: 6,),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:[
                              const Text("Reward Name"),
                            ]

                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            const Text("Account Numbers"),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            const Text("Miles Available"),
                          ],
                        ),



                      ],
                    ),
                  ),
                ],
              ),


            ],

          ),
        ],
      ),
    );
  }
}