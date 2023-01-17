import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_demo/Components/SignInButton.dart';
import 'package:state_management_demo/screens/op.dart';
import 'package:state_management_demo/screens/registration.dart';
import '../Components/text_fields.dart';


class LoginScreen extends StatelessWidget {

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  LoginScreen({Key? key}) : super(key: key);

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();

    dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(padding: const EdgeInsets.symmetric(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // Dexter Hut Logo
                  Container(alignment: Alignment.center,
                  height: 230, width: 180,
                  child: Image.asset('assets/images/DexterLogo.png'),),
                  const SizedBox(height: 10),


                // You Have been missed
                Text("Welcome back you have been missed !",
                  style:
                  TextStyle(
                  fontSize: 18,
                  color: Colors.grey.shade800,
                  ),
                ),
                const SizedBox(height: 20,),

                // Email
                TextFields(
                  controller: emailController,
                  hintText: "Username",
                  obscureText: false,
                ),
                const SizedBox(height: 10,),


                // Password TextField
                TextFields(
                  controller: passwordController,
                  hintText: "Password",
                  obscureText: true,
                ),
                const SizedBox(height: 20,),


              // Dont have an account
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account? ",
                      style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade800
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          Get.to(RegisterScreen());
                        },
                        child: const Text(
                          "Register", style: TextStyle(fontSize:16,color: Colors.blue,fontWeight: FontWeight.bold),)),
                  ],
                ),
                const SizedBox(height: 10,),


                // LoginIn button
                SignInButton(onTap: signIn),

              ],
            ),
          ),
        ),
      ),

    );
  }
    Future signIn() async{
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      Get.to(const Output());
    }
}
