
import 'package:firebase_auth/firebase_auth.dart';
const streamkey="pkpfjyaqyp8q";

 class AuthService {
   final FirebaseAuth _auth=FirebaseAuth.instance;
   Future signInWithEmailAndPassword (String email, String password)
   async {
     try{
       UserCredential  response= await _auth.signInWithEmailAndPassword(email: email, password: password);
       var user=response.user;
        return user;
     }
         catch(e){
         print(e.toString());
         return null;
       }
         }
   }
