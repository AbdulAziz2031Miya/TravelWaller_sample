import 'package:flutter/material.dart';
import 'appbar.dart';
import 'sidebar.dart';
class ConnectPalt extends StatefulWidget {
  const ConnectPalt({Key? key}) : super(key: key);

  @override
  State<ConnectPalt> createState() => _ConnectPaltState();
}

class _ConnectPaltState extends State<ConnectPalt> {
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
            padding:  const EdgeInsets.only(top: 15
            ),
            children: [

              Image.asset('assets/images/img_3.png',
                height:200,
                fit:BoxFit.cover,
              ),

            ],
          ),
          Container(
            padding: const EdgeInsets.only(
                left: 90,
                top: 240),
            child: const Text('Register Program',
              style: TextStyle( color: Colors.black,fontSize: 20 ),),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                top:  MediaQuery.of(context).size.height*0.36,
                right: 35,
                left: 35,),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text("Id Number",style: TextStyle( fontSize: 18,
                      ),),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor:Colors.grey.shade100,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ),

                  Row(
                    children: const [
                      Text("First Name",style: TextStyle( fontSize: 18,
                      ),),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor:Colors.grey.shade100,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ),
                  Row(
                    children: const [
                      Text("Last Name",style: TextStyle( fontSize: 18,
                      ),),
                    ],
                  ),
                  TextField(
                    decoration: InputDecoration(
                      fillColor:Colors.grey.shade100,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ),
                  Row(
                    children: const [
                      Text("Password",style: TextStyle( fontSize: 18,
                      ),),
                    ],
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade100,
                      filled:true,
                      hintText: 'Your Password:',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                    ),
                  ),
                  const SizedBox(
              height:12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                          Container(
                          width: 120,
                          height: 60,
                          decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(16),
                          ),
                          child: IconButton(
                          color: Colors.white,
                          onPressed: () {
                          Navigator.pushNamed(context,'deltaconnected');},
                          icon: const Icon(
                          Icons.add,semanticLabel: 'Registr',
                          )),
                          ),

    ],
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