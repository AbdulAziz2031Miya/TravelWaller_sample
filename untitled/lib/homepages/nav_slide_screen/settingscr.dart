import 'package:flutter/material.dart';
import '../login_create_add/appbar.dart';
import '../login_create_add/sidebar.dart';

 class SettingTab extends StatefulWidget {
   const SettingTab({Key? key}) : super(key: key);

   @override
   State<SettingTab> createState() => _SettingTabState();
 }

 class _SettingTabState extends State<SettingTab> {
  get builder => null;

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar:buildAppBar(context),
       endDrawer: const CornerNavBar(),
       backgroundColor: Color.fromRGBO(33, 40, 68,1),

       body:
         GridView.count(

           mainAxisSpacing: 10,
           crossAxisSpacing: 7,
           childAspectRatio:1.1,
           padding: const EdgeInsets.only(left: 28,top: 40,right:28),
           primary: true,
           crossAxisCount: 3,
           children: [
             Card(
         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),),
               elevation: 4,



             ),

             Card(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(8),
               ),
               elevation: 4,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children:[
                   IconButton(onPressed: (){}, icon: Image.asset('assets/images/img_16.png',height: 60, width: 60),),
                   const Text('Languages'),
                 ],
               ),
             ),
             Card(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(8),
               ),
               elevation: 4,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children:[
                   IconButton(onPressed: (){}, icon: Image.asset('assets/images/wallet.png',height: 60, width: 60),),
                   const Text('My Wallet'),
                 ],
               ),
             ),
             Card(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(8),
               ),
               elevation: 4,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children:[
                   IconButton(onPressed: (){}, icon: Image.asset('assets/images/likefeedback.png',height: 60, width: 60),),
                   const Text('Feedback'),
                 ]
               ),
             ),
             Card(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(8),
               ),
               elevation: 4,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children:[
                   IconButton(onPressed: (){}, icon: Image.asset('assets/images/img_8.png',height: 60, width: 60),),
                   const Text('my Members'),
                 ],
               ),
             ),
             Card(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(8),
               ),
               elevation: 4,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children:[
                   IconButton(onPressed: (){}, icon: Image.asset('assets/images/img_10.png',height: 60, width: 60),),
                   const Text('Support'),
                 ],
               ),
             ),
             Card(

               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(8),
               ),
               elevation: 4,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children:[
                   IconButton(onPressed: (){}, icon: Image.asset('assets/images/img_9.png',height: 60, width: 60),),
                   const Text('Permission'),
                 ],
               ),
             ),

             Card(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(8),
               ),
               elevation: 4,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children:[
                   IconButton(onPressed: (){}, icon: Image.asset('assets/images/img_11.png',height: 60, width: 60),),
                   const Text('Perferences'),
                 ],
               ),
             ),
             Card(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(8),
               ),
               elevation: 4,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children:[
                   IconButton(onPressed: (){}, icon: Image.asset('assets/images/img_12.png',height: 60, width: 60),),
                   const Text('Partners'),
                 ],
               ),
             ),
             Card(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(8),
               ),
               elevation: 4,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children:[
                   IconButton(onPressed: (){}, icon: Image.asset('assets/images/img_13.png',height: 60, width: 60),),
                   const Text('Terms and \nCondition'),
                 ],
               ),
             ),
             Card(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(8),
               ),
               elevation: 4,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children:[
                   IconButton(onPressed: (){}, icon: Image.asset('assets/images/img_14.png',height: 60, width: 60),),
                   const Text('Privacy\n Policy'),
                 ],
               ),
             ),


             Card(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(8),
               ),
               elevation: 4,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children:[
                   IconButton(onPressed: (){}, icon: Image.asset('assets/images/img_15.png',height: 60, width: 60),),
                   const Text('App Info'),
                 ],
               ),
             ),
           ],
         ),

     );
   }
 }
