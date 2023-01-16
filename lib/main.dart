import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:state_management_demo/screens/login_screen.dart';
import 'package:get/get.dart';
import 'package:state_management_demo/screens/op.dart';




void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
     home: homepage(),
    );
  }
}

class homepage extends StatelessWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      body: StreamBuilder<User?> (
    stream: FirebaseAuth.instance.authStateChanges(),
    builder: (context, snapshot){
      if (snapshot.hasData){
        return Output();
      }
      else{
        return LoginScreen();
    }
    },
    ),
    );
  }
}

