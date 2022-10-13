import 'package:flutter/material.dart';
import 'appbar.dart';
import 'sidebar.dart';
class PlatFormConn extends StatelessWidget {
  const PlatFormConn({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:buildAppBar(context),
      endDrawer: const CornerNavBar(),
      body: ListView(

        children: [

          ExpansionTile(
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,

              children: const [
                Text('Airlines', style: TextStyle( fontWeight: FontWeight.bold,fontSize: 25),),
                Icon(Icons.flight,
                size: 50,),
              ],
            ),
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Image.asset('assets/images/aa.png',height: 120,width: 120,),
                  Container(
                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: IconButton(
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pushNamed(context,'connectdelta');},
                        icon: const Icon(
                          Icons.add,
                        )),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/images/avelo.png',height: 120,width: 120,),

                  Container(
                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: IconButton(
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pushNamed(context,'connectdelta');},
                        icon: const Icon(
                          Icons.add,
                        )),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/images/breeze.png',height: 120,width: 120,),
                  Container(
                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: IconButton(
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pushNamed(context,'connectdelta');},
                        icon: const Icon(
                          Icons.add,
                        )),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/images/delta.png',height: 120,width: 120,),
                  Container(
                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: IconButton(
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pushNamed(context,'connectdelta');},
                      icon: const Icon(
                        Icons.add,
                      ),
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
                Text('Hotels',style: TextStyle( fontSize: 25, fontWeight: FontWeight.bold),),
                Icon(Icons.hotel,
                size: 50,),

              ],

            ),

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Image.asset('assets/images/hilton.png',height: 120,width: 120,),

                  Container(
                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child:
                    IconButton(
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pushNamed(context,'connectdelta');},

                      icon: const Icon(
                        Icons.add,
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/images/ihg.png',height: 120,width: 120,),
                  Container(
                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: IconButton(
                        color: Colors.white,
                        onPressed: () {
                          Navigator.pushNamed(context,'connectdelta');},
                        icon: const Icon(
                          Icons.add,
                        )),
                  ),
                ],
              ),


            ],

          ),
          ExpansionTile(

            title: Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Rentals Cars',style: TextStyle( fontSize: 25, fontWeight: FontWeight.bold),),
                Icon (Icons.car_rental, size: 55,),

              ],

            ),

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Image.asset('assets/images/img_3.png',height: 120,width: 120,),

                  Container(
                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child:
                    IconButton(
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pushNamed(context,'connectdelta');},

                      icon: const Icon(
                        Icons.add,
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/images/img_3.png',height: 120,width: 120,),
                  Container(
                      child: Add_Contener(),
                      // child: IconButton(
                      // color: Colors.white,
                      // onPressed: () {
                      //   Navigator.pushNamed(context,'connectdelta');},
                      // icon: const Icon(
                      //   Icons.add,
                      // )),

                  )

                ],
              ),


            ],

          ),

        ],
      ),
    );
  }}
class Add_Contener extends StatelessWidget {
  const Add_Contener({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(

      width: 80,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(25),
      ),

    );
  }
}


