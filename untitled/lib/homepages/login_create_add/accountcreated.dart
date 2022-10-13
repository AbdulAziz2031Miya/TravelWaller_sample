import 'package:flutter/material.dart';
import 'sidebar.dart';

class AddOn extends StatefulWidget {
  const AddOn({Key? key}) : super(key: key);

  @override
  State<AddOn> createState() => _AddOnState();
}

class _AddOnState extends State<AddOn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
          size: 35,
        ),
        elevation: 8,
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, 'buttoms');
              },
              icon:
                  Image.asset('assets/images/img_5.png', height: 30, width: 30),
            ),
            IconButton(
              onPressed: () {},
              icon:
                  Image.asset('assets/images/img_1.png', height: 30, width: 30),
              padding: const EdgeInsets.only(left: 106),
            ),
          ],
        ),
      ),
      endDrawer: CornerNavBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 75),
                child: const Text(
                  "Welcome, Sam!\nJust  a few more steps,\nPlease add all your accounts from \nour list by clicking on \nAdd program",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 300),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'connectplatform');
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            gradient: const LinearGradient(
                              colors: [
                                Color(0xff66AD44),
                                Color(0xff66ad41),
                              ],
                            )),
                        width: MediaQuery.of(context).size.width,
                        child: const Text(
                          "Add Programs ",
                          textAlign: TextAlign.center,
                          style: const TextStyle(fontSize: 25),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
