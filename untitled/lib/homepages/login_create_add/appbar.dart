
import 'package:flutter/material.dart';

buildAppBar( context) {
  return AppBar(
    backgroundColor:Colors.grey.shade100,
    iconTheme:const IconThemeData(
      color: Colors.black,
      size: 35,
    ),
    elevation: 8,
    automaticallyImplyLeading: false,
    title:Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        IconButton(onPressed:(){Navigator.pushNamed(context,'BottomNav');}, icon: Image.asset('assets/images/img_5.png',height: 25,width: 25),),
        const SizedBox( width: 103,),
        IconButton(onPressed: (){ }, icon: Image.asset('assets/images/img_1.png',height: 25,width: 25),)
        ,
      ]
      ,
    )
    ,
  );
}