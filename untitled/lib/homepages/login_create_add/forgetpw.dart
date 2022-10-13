
import 'package:flutter/material.dart';

import 'textfield_design.dart';
 class resetPW extends StatefulWidget {
   const resetPW({Key? key}) : super(key: key);

   @override
   State<resetPW> createState() => _resetPWState();
 }

 class _resetPWState extends State<resetPW> {
   TextEditingController emailController = TextEditingController();
   final GlobalKey<FormState> formemailhandler = GlobalKey<FormState>();

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.white,
         foregroundColor: Colors.blue,
         bottomOpacity: 100,
       ),
       backgroundColor: Colors.white,
       body: Stack(
         children: [
           ListView(
             physics: const BouncingScrollPhysics(),
             padding: const EdgeInsets.only(top: 25),
             children: [
               Image.asset('assets/images/img_3.png',
                 height: 200,
                 fit: BoxFit.cover,
               ),
             ],
           ),
           Container(
             padding: const EdgeInsets.only(
                 top: 200),
             color: Colors.grey,
             width: MediaQuery
                 .of(context)
                 .size
                 .width,
             height: MediaQuery
                 .of(context)
                 .size
                 .height * 0.3,

             child: const Text('Reset Your Account',
               textAlign: TextAlign.center,
               style: TextStyle(color: Colors.black, fontSize: 25,),),
           ),
           SingleChildScrollView(
             child: Form(
               key: formemailhandler,
               child:
               Column(
                 children: [
                   Container(
                     padding: EdgeInsets.only(
                       top: MediaQuery
                           .of(context)
                           .size
                           .height * 0.4,
                       right: 35,
                       left: 35,),
                     child: Column(
                       children: [
                         Row(
                           children: const [
                             Text("Email"
                               , style: TextStyle(fontSize: 18,
                               ),),
                           ],
                         ),
                         TextFormField(
                           controller: emailController,
                           keyboardType: TextInputType.text,
                           decoration: buildInputDecoration(
                               Icons.mail, "Guest@gmail.com"),
                           validator: (value) {
                             if (value!.isEmpty) {
                               return 'Please a Enter email';
                             }
                             if (!RegExp(
                                 "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                                 .hasMatch(value)) {
                               return 'Please a valid Email';
                             }
                             return null;
                           },
                         ),
                         const SizedBox(height: 40),

                         const SizedBox(
                           height: 20,
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             const Text(
                               'send mail',
                               style: TextStyle(
                                   fontSize: 18, fontWeight: FontWeight.w700),
                             ),
                             CircleAvatar(
                               radius: 30,
                               backgroundColor: Colors.green,
                               child: IconButton(
                                   color: Colors.white,
                                   onPressed: () {

                                     if (formemailhandler.currentState!
                                         .validate()) {
                                       showDialog(context: context,
                                       builder: (BuildContext context) =>
                                           _buildPopupDialog(context),);

                                     }
                                     else {
                                       print("UnSuccessfull");
                                     }
                                   },

                                   icon: Icon(
                                     Icons.mail,
                                   )),
                             )
                           ],
                         ),


                       ],
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
   Widget _buildPopupDialog(BuildContext context) {
     return AlertDialog(
       title: const Text('Reset'),
       content: Column(
         mainAxisSize: MainAxisSize.min,
         crossAxisAlignment: CrossAxisAlignment.start,
         children: <Widget>[
           Text(" Link has been sent! \nPlease check you mail"),
         ],
       ),
       actions: <Widget>[
         TextButton(
           onPressed: () {
             Navigator.of(context).pop();
           },
           child: const Text('Close'),
         ),
       ],
     );
   }

