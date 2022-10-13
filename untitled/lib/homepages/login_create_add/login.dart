
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../authentication/auth_firebase_anon.dart';
class LoginForm  extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {

  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                left: 45,
                top: 260),
            child: const Text('Welcome to Travel Wallet',
              style: TextStyle(color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),),
          ),
          const SizedBox(height: 10,),
          Container(
            padding: const EdgeInsets.only(
                left: 15,
                right: 15,
                top: 360),
            child: SingleChildScrollView(
              child: Form(
                key: formkey,
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Text("Email", style: TextStyle(fontSize: 18,
                        ),),
                      ],
                    ),
    //Emails--------------------------------------------------->
                    TextFormField(
                      controller: emailEditingController,
                      keyboardType: TextInputType.text,
                      decoration: buildInputDecoration("Guest@gmail.com"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please a Enter';
                        }
                        if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                            .hasMatch(value)) {
                          return 'Please a valid Email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 25),
   //Password-------------------------------------------->
                    Row(
                      children: const [
                        Text("Password", style: TextStyle(fontSize: 18,
                        ),),
                      ],
                    ),

                    TextFormField(
                      obscureText: true,
                      controller: passwordEditingController,
                      decoration: buildInputDecoration("Your Password "),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please a Enter Password';
                        }
                        return value.length >6
                            ? null
                            : "Invalid Password ";
                      },

                    ),
//Login with fingerprint_____________________--------------------------->
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (BuildContext context) => _buildBiometricPopUp(context),);
                          },
                          child: const Text('login with finger print',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.blue,
                                fontSize: 13),
                          ),
                          style: const ButtonStyle(),
                        ),
                      ],
                    ),
  //Login button-------------------------------------------->

                    GestureDetector(
                      onTap: () {
                                if(formkey.currentState!.validate())
                                {
                                  // context.read<AuthenticationService>().signIn(
                                  //   email: emailEditingController.text.trim(),
                                  //   password: passwordEditingController.text.trim(),
                                  //
                                  // );
                                  Navigator.pushNamed(context, 'BottomNav');
                                }
                                else
                                  {
                                    print("UnSuccessfull");
                                  }
                      },
     //Login-------------------------------------------->
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
     //Forgotpassword------------------------------------->
                    Row(

                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, 'forgetpw');
                            },
                            child: const Text(
                              'Forgot Password',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.blue,
                                fontSize: 12,
                              ),
                            )),
                      ],
                    ),
     //CreateNewAccount----------------------------------->
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'createaccount');
                          },
                          child: const Text(
                            'Create Account',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.blue,
                                fontSize: 12),
                          ),
                          style: const ButtonStyle(),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'p_privacy');
                          },
                          child: const Text(

                            'Privacy',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.blue,
                                fontSize: 12),
                          ),
                          style: const ButtonStyle(),
                        ),
                      ],
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
  InputDecoration buildInputDecoration(String hint_text) {
    return InputDecoration(
      hintText: hint_text,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: const BorderSide(
            color: Colors.green,
            width: 1.5
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: const BorderSide(
          color: Colors.blue,
          width: 1.5,
        ),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: const BorderSide(
          color: Colors.blue,
          width: 1.5,
        ),
      ),
    );
  }
Widget _buildBiometricPopUp (BuildContext context) {
  return AlertDialog(
    content: Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const <Widget>[
        Icon(Icons.fingerprint_rounded,size: 60,),
        Text("\n\nFinger Print login."),
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