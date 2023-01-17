import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_demo/screens/login_screen.dart';
import 'package:state_management_demo/screens/studentform.dart';

import '../Components/SignUpButton.dart';
import '../Components/text_fields.dart';

class RegisterScreen extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  RegisterScreen({Key? key}) : super(key: key);

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

                  //Tell us more about yourself
                Text("Tell us more about yourself ",
                  style:
                  TextStyle(
                    fontSize: 18,
                    color: Colors.grey.shade800,
                  ),
                ),
                const SizedBox(height: 20,),

                  //Email
                  TextFields(
                    obscureText: false,
                    hintText: "Username",
                    controller: emailController,
                  ),
                const SizedBox(height: 10,),


                  //Password
                  TextFields(
                    obscureText: true,
                    hintText: "Password",
                    controller: passwordController,
                ),
                const SizedBox(height: 10),

                //Confirm Password
                const TextFields(
                  obscureText: true,
                  hintText: "Confirm password",
                  controller: null,
                ),
                const SizedBox(height: 20),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text("Already have an account? ",
                       style: TextStyle(
                           fontSize: 16,
                           color: Colors.grey.shade800
                       ),
                     ),
                    InkWell(
                        onTap: () {
                          Get.to(LoginScreen());
                        },
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),


                //Register button
                SignUpButton(onTap: signUp),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Future signUp() async{
    await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: emailController.text.trim(),
      password: passwordController.text.trim(),
    );
    Get.to(StudentRegForm());
  }
}
