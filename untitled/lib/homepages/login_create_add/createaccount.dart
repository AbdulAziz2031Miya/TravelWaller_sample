import 'package:flutter/material.dart';
import 'textfield_design.dart';
class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  _MyRegisterState createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  var biometric = false;
  late String emails;

  TextEditingController fullname = TextEditingController();
  TextEditingController emailscontroller = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmpassword = TextEditingController();
  TextEditingController pinController=TextEditingController();
  final GlobalKey<FormState> createkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        foregroundColor: Colors.white,
        bottomOpacity: 100,
      ),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 120,left: 15,right: 15),
            child: SingleChildScrollView(
              child: Form(
                key: createkey,
                child: Column(
                  children: [

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('Create New\n    Account',
                                style: TextStyle(color: Colors.black,
                                  fontSize: 29,
                                  fontWeight: FontWeight.bold,),
                              ),
                            ],
                          ),
                       //   const SizedBox(height: 70,),
                    Padding(
                      padding: const EdgeInsets.only(bottom:15,left: 10,right: 10),
                      child: TextFormField(
                        controller: fullname,
                        keyboardType: TextInputType.text,
                        decoration: buildInputDecoration(Icons.person,"Full Name"),
                        validator: ( value){
                          if(value!.isEmpty)
                          {
                            return 'Please Enter Name';
                          }
                          return null;
                        },
                      ),
                    ),
                        //  const SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                      child: TextFormField(
                        controller:emailscontroller,
                        keyboardType: TextInputType.text,
                        decoration:buildInputDecoration(Icons.email,"Email"),
                        validator: ( value){
                          if(value!.isEmpty)
                          {
                            return 'Please a Enter';
                          }
                          if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value)){
                            return 'Please a valid Email';
                          }
                          return null;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                      child: TextFormField(
                        controller: password,
                        keyboardType: TextInputType.text,
                        decoration:buildInputDecoration(Icons.lock,"Password"),
                        validator: ( value){
                          if(value!.isEmpty)
                          {
                            return 'Please a Enter Password';
                          }
                          return null;
                        },

                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                      child: TextFormField(
                        controller: confirmpassword,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        decoration:buildInputDecoration(Icons.lock,"Confirm Password"),
                        validator: ( value){
                          if(value!.isEmpty)
                          {
                            return 'Please re-enter password';
                          }
                          print(password.text);

                          print(confirmpassword.text);

                          if(password.text!=confirmpassword.text){
                            return "Password does not match";
                          }

                          return null;
                        },

                      ),
                    ),

                    //   const SizedBox(height: 10,),

                          // TextField(
                          //   style: const TextStyle(color: Colors.black),
                          //   obscureText: true,
                          //    controller:password ,
                          //    decoration:buildInputDecoration(Icons.phone,"Phone No"),
                          //     validator : (value){
                          //     if(value.isEmpty)
                          //     {
                          //       return 'Please a Enter';
                          //     }
                          //     if(!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]").hasMatch(value))
                          //     {
                          //       return 'Please a valid Email';
                          //     }
                          //     return null;
                          //   },
                          //
                          // ),
                          // const SizedBox(height: 10,),
                          //
                          // TextField(
                          //   style: const TextStyle(color: Colors.black),
                          //   obscureText: true,
                          //     keyboardType: TextInputType.text,
                          //     controller: confirmpassword,
                          //     decoration: buildInputDecoration(Icons.lock,"Confirm Password"),
                          //     validator: (String value){
                          //       if(value.isEmpty)
                          //       {
                          //         return 'Please re-enter password';
                          //       }
                          //       print(password.text);
                          //
                          //       print(confirmpassword.text);
                          //
                          //       if(password.text!=confirmpassword.text){
                          //         return "Password does not match";
                          //       }
                          //
                          //       return null;
                          //     },
                          // ),
                    Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              const Text('Biometric Login',
                                style: TextStyle(fontSize: 18),),
                              Container(
                                child: Switch(
                                  activeColor: Colors.green,
                                  value: biometric,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      biometric = value!;
                                    });
                                  },
                                ),),
                            ],
                          ),
                          const SizedBox(
                            height: 1,
                          ),
                          if(biometric != false)
                            Container(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    children: const <Widget>[
                                      Text('Please set 4 to 8 digit pin ',
                                        style: TextStyle(fontSize: 18),),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 15,left: 10,right: 10),
                                    child: TextFormField(
                                      controller: pinController,
                                      obscureText: true,
                                      keyboardType: TextInputType.text,
                                      decoration:buildInputDecoration(Icons.lock,"Set 4 Digit Pin"),
                                      validator: ( value){
                                        if(value!.isEmpty)
                                        {
                                          return 'Please  set 4 digit pin';
                                        }
                                        if( value.length!=4)
                                          {
                                            return 'Pin should be only 4 digit';
                                          }
                                        return null;
                                      },

                                    ),
                                  ),
                                ],
                              ),
                            ),
                          const SizedBox(
                            height: 30,
                          ),
                            GestureDetector(
                            onTap: () {
                            if(createkey.currentState!.validate())
                            {
                            Navigator.pushNamed(context, 'BottomNav');}
                            else
                            {
                            print("UnSuccessfull");
                            }
                            },
                            child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blue.shade700,
                            ),
                            width: MediaQuery
                                .of(context)
                                .size
                                .width,
                            child: const Text("Log In",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            ),
                            ),
                        ],
                      ),

                ),
              ),
            ),
        ],
      ),
    );
  }
}
