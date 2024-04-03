import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fooddelivery_app/Screens/home_Screen/home_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:sign_in_button/sign_in_button.dart';

 class SignIn extends StatefulWidget {
  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  Future<User?> _googleSignUp() async {
    try {
      final GoogleSignIn _googleSignIn = GoogleSignIn(
        scopes: ['email'],
      );
      final FirebaseAuth _auth = FirebaseAuth.instance;

      final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
      final GoogleSignInAuthentication? googleAuth =
      await googleUser?.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken,
        idToken: googleAuth?.idToken,
      );

      final User? user = (await _auth.signInWithCredential(credential)).user;
      // print("signed in " + user.displayName);

      return user;
    } catch (e) {
    }
  }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: Container(
         height: double.infinity,
         width: double.infinity,
         decoration: BoxDecoration(
           image:DecorationImage(
             fit: BoxFit.cover,
             image: AssetImage('assets/background.jpeg'),
           )
         ),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Container(
               height: 400,
               width: double.infinity,

               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: [
                   Text('Sign in to continue'),
                   Text('FoodApp',
                     style: TextStyle(
                     fontSize: 50,
                       color: Colors.white,
                       shadows: [
                         BoxShadow(
                           blurRadius: 5,
                           color: Colors.green.shade900,
                           offset: Offset(3,3),
                         )
                       ]
                   ),),
                   Column(
                     children: [
                       SignInButton(
                         Buttons.google,
                         text: "Sign in with Google",
                         onPressed: () {
                           _googleSignUp().then((value) => Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomeScreen(),
                           ),
                           ),
                           );
                         },
                       ),
                       SignInButton(
                         Buttons.apple,
                         text: "Sign in with apple",
                         onPressed: () {},
                       ),
                     ],
                   ),
                   Column(
                     children: [
                       Text('By signing in You are agreeing to our',
                         style: TextStyle(
                         color: Colors.grey[800],
                       ),),
                       Text('Terms and Conditions',style: TextStyle(
                         color: Colors.grey[800],
                       ),),
                     ],
                   ),

                 ],
               ),
             )
           ],
         ),
       ),
     );
   }
}
