import 'package:firebase_auth/firebase_auth.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'authentication/auth_firebase_anon.dart';
import 'homepages/controller.dart';
import 'homepages/login_create_add/createaccount.dart';
import 'homepages/login_create_add/login.dart';
import 'homepages/login_create_add/sidebar.dart';
import 'homepages/login_create_add/forgetpw.dart';
import 'homepages/login_create_add/accountcreated.dart';
import 'homepages/nav_slide_controller/BottomNav.dart';
import 'homepages/nav_slide_screen/homepage.dart';
import 'homepages/login_create_add/p_privacy.dart';
import 'homepages/login_create_add/connectdelta.dart';
import 'homepages/login_create_add/connectplatform.dart';
import 'homepages/login_create_add/deltaconnected.dart';
import 'homepages/search_page/cars.dart';
import 'homepages/search_page/flights.dart';
import 'homepages/search_page/lodging.dart';
import 'vipagent/screens/home_screen.dart';
import 'vipsignin/vip_sign_in.dart';

Future main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(MyApp());
// }
//

  runApp(MaterialApp(
    debugShowCheckedModeBanner:false,
    home:LoginForm(),
    routes: {'login': (context) => LoginForm(),
 'createaccount': (context) => MyRegister(),
      'sidebar': (context) => CornerNavBar(),
      'forgetpw': (context) => resetPW(),
      'accountcreated': (context) => AddOn(),
      'homepage': (context) =>HomeScreen(),
      'p_privacy':(context)=>home(),
      'BottomNav':(context)=>LastTab2(),
      'connectplatform':(context)=>PlatFormConn(),
      'connectdelta':(context)=>ConnectPalt(),
      'flights':(context)=>FlightRound(),
      'lodging':(context)=>LodgingScreen(),
      'deltaconnected':(context)=>DeltaConnected(),
      'cars': (context)=>CarSlide(),
      'controller':(context)=>MyApp2(),
      'vip_sign_in':(context)=>VipLogin(),
      'home_screen':(context)=> ChatHomeScreen(),


    },
  ),

  );

}

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//       providers: [
//         Provider<AuthenticationService>(
//           create: (_) => AuthenticationService(FirebaseAuth.instance),
//         ),
//         StreamProvider(
//           create: (context) => context.read<AuthenticationService>().authStateChanges, initialData: AuthenticationWrapper,
//         )
//       ],
//       child: MaterialApp(
//         title: 'Flutter Demo',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//           visualDensity: VisualDensity.adaptivePlatformDensity,
//         ),
//         home: AuthenticationWrapper(),
//       ),
//     );
//   }
// }
//
// class AuthenticationWrapper extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     final firebaseUser = context.watch<User?>();
//
//     if (firebaseUser != null) {
//       return  LastTab2();
//     }
//     return LoginForm();
//   }
// }