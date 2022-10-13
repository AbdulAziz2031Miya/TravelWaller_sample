
import 'package:flutter/material.dart';
import '../login_create_add/appbar.dart';
import '../login_create_add/sidebar.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:buildAppBar(context),
      endDrawer: const CornerNavBar(),
    backgroundColor: const Color.fromRGBO(33, 40, 68,1),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top:15),
            child: const Text('Where are we\n    Tripping?', style:  TextStyle(fontSize: 30,color: Colors.white),),
          ),
          Container(
            height: 402,
            margin: const EdgeInsets.only(
              left: 60,
              right: 60,
              top: 10,
            ),
            child: GridView.count(
              padding: const EdgeInsets.all(15.0),
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              primary: false,
              crossAxisCount: 2,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 4,
                  child: InkWell(
                    onTap:(){Navigator.pushNamed(context,'controller');},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/lodging.png',height: 60, width: 60,),
                        const Text('Lodging'),
                      ],
                    ),
                  ),
                ),

                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 4,
                  child: InkWell(
                    onTap:(){ Navigator.pushNamed(context,'flights');},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/flights.png',height: 60, width: 60,),
                      const Text('Flights'),
                    ],
                  ),),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 4,
                  child: InkWell(
                    onTap:(){Navigator.pushNamed(context,'cars');},
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/car.png',height: 60,width: 60,),
                      const Text('Cars'),
                    ],
                  ),),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 4,
                  child: InkWell(
                    onTap: (){Navigator.pushNamed(context, 'cars');},
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/buses.png',height: 60,width: 60,),
                        const Text('Buses'),
                      ],
                    ),
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/cruises.png',height: 60,width: 60,),
                      const Text('Cruises'),
                    ],
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/train.png',height: 60,width: 60,),
                      const Text('Trains'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 0,
            ),
            height:110,
            width: 245,
            child: Card(
              elevation: 4.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/img_17.png',height: 99,width: 240,),
                ],
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0)),
            ),
          ),
        ],
      ),
    );
  }
}