
import 'package:flutter/material.dart';
import 'appbar.dart';
import 'sidebar.dart';
class DeltaConnected extends StatefulWidget {

  @override
  State<DeltaConnected> createState() => _DeltaConnectedState();
}

class _DeltaConnectedState extends State<DeltaConnected> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:buildAppBar(context),
      endDrawer: const CornerNavBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(

        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/img_3.png',height:160,width: 350,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                     IconButton(onPressed: null, icon: Image.asset('assets/images/img_8.png',fit: BoxFit.fill),
                       iconSize: 80,),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Image.asset('assets/images/delta.png',height: 110,width: 350,),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(
                    left: 30,
                    top: 40),
                child: const Text(
                  "your account is now \n\t\t    connected!",
                  style: TextStyle(color: Colors.black, fontSize: 35),
                ),

              ),
              SizedBox(
                height: 110,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                    Container(
                    width: 150,
                    height: 60,

                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: IconButton(
                        color: Colors.black,
                        onPressed: () {
                          Navigator.pushNamed(context, 'connectplatform');
                        },
                        icon: const Icon(
                          Icons.add,
                        )),
                  ),
                  Container(
                    width: 150,
                    height: 60,

                    decoration: BoxDecoration(
                      color: Colors.blue.shade300,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: IconButton(
                        color: Colors.black,
                        onPressed: () {
                          Navigator.pushNamed(context,'BottomNav');
                        },
                        icon: const Icon(
                          Icons.arrow_forward,
                        )),
                  ),
                         ],


                  ),
                  ],


        ),
      ),
      ),);
  }}