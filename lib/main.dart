import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:state_management_demo/screens/login_screen.dart';
import 'package:get/get.dart';
import 'package:state_management_demo/screens/op.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
     home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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

