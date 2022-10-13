import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../login_create_add/appbar.dart';
import '../login_create_add/sidebar.dart';
 class BookedTrip extends StatefulWidget {
   const BookedTrip({Key? key}) : super(key: key);

   @override
   State<BookedTrip> createState() => _BookedTripState();
 }

 class _BookedTripState extends State<BookedTrip> {
   var startDate;
   var endDate;
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar:buildAppBar(context),
       endDrawer: const CornerNavBar(),
       backgroundColor: Color.fromRGBO(33, 40, 68,1),
       body: Column(
         children: [
           Container(
             height: 40,
             margin: const EdgeInsets.only(top:30),
             child:  const Text("Upcoming Reservations",style: TextStyle( fontSize: 20,fontWeight: FontWeight.bold),),
             decoration:BoxDecoration(
               borderRadius: BorderRadius.circular(5),),

           ),

           Container(
             height: 200,
             margin: const EdgeInsets.only(left: 25,top: 10,right:25),
             decoration:BoxDecoration(
               color: Colors.grey,
               borderRadius: BorderRadius.circular(45),),
             child: Column(
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: const [
                     IconButton(onPressed:null, icon: Icon (Icons.hotel),iconSize: 60,)
                   ],
                 ),
                 Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children:[
                       const Text("Start date - End date"),
                     ]

                 ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children:[
                     const Text("Departure address - Arrival Address"),
                   ],
                 ),
                 SizedBox(
                   height: 12,
                 ),
                 Container(
                   width: 120,
                   height: 60,
                   decoration: BoxDecoration(
                     color: Colors.white70,
                     borderRadius: BorderRadius.circular(16),
                   ),
                   padding: const EdgeInsets.only(top:12),
                   child: Text("View\n Reservation",textAlign: TextAlign.center,),
                 ),
               ],
             ),
           ),
           Container(
             height: 200,
             margin: const EdgeInsets.only(left: 25,top: 10,right:25),
             decoration:BoxDecoration(
               color: Colors.grey,
               borderRadius: BorderRadius.circular(45),),
             child: Column(
               children: [
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: const [
                     IconButton(onPressed:null, icon: Icon (Icons.flight),iconSize: 60,)
                   ],
                 ),
                 Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                       children:[
                         const Text("Start date - End date"),
                       ]

                 ),
             Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children:[
                   const Text("Departure address - Arrival Address"),
                 ],
             ),
                 SizedBox(
                   height: 12,
                 ),
                 Container(
                   width: 120,
                   height: 60,
                   decoration: BoxDecoration(
                     color: Colors.white70,
                     borderRadius: BorderRadius.circular(16),
                   ),
                   padding: const EdgeInsets.only(top:12),
                   child: Text("View\n Reservation",textAlign: TextAlign.center,),
                 ),
         ],
       ),
           ),
       ],
     ),
     );

   }
 }

 Widget build_continer(BuildContext context) {
     return Container(
       height: 200,
       margin: const EdgeInsets.only(left: 25,top: 10,right:25),
       decoration:BoxDecoration(
         color: Colors.grey,
         borderRadius: BorderRadius.circular(45),),

     );
   }

