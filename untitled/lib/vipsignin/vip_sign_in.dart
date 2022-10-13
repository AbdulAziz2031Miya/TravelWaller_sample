
import 'package:flutter/material.dart';

import '../homepages/login_create_add/appbar.dart';
import '../homepages/login_create_add/sidebar.dart';
class VipLogin  extends StatefulWidget {
  const VipLogin({Key? key}) : super(key: key);

  @override
  State<VipLogin> createState() => _VipLoginState();
}

class _VipLoginState extends State<VipLogin> {
  get image => true;
  TextEditingController emailEditingController = new TextEditingController();
  TextEditingController passwordEditingController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:buildAppBar(context),
      endDrawer: const CornerNavBar(),
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          ListView(
            physics: const BouncingScrollPhysics(),
            padding:  const EdgeInsets.only(top: 25),
            children: [
              Image.asset('assets/images/img_3.png',
                height:200,
                fit:BoxFit.cover,
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.only(
                left: 45,
                top: 260),
            child: const Text('Welcome to VIP Group',
              style: TextStyle( color: Colors.black,fontSize: 25 ,fontWeight: FontWeight.bold),),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                top:  MediaQuery.of(context).size.height*0.45,
                right: 35,
                left: 35,),
              child: Column(
                children: [

                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context,'home_screen');
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 60),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xff66AD400),
                              Color(0xff4ae81b),
                            ],
                          )),
                      width: MediaQuery.of(context).size.width,
                      child: const Text("login",
                        textAlign: TextAlign.center,
                        style: const TextStyle( fontSize: 25),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}