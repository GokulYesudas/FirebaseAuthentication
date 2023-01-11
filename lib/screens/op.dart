import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Output extends StatelessWidget {
  const Output({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser!;
    return Scaffold(
      appBar: AppBar(
        title:Text("Home Page")
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Signed in as"),
        SizedBox(height: 8,),
          Text(user.email!,style: TextStyle(fontSize:30),),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              minimumSize: Size.fromHeight(50),
            ),
              onPressed: () => FirebaseAuth.instance.signOut(),
              icon:Icon(Icons.arrow_back,size: 32,),
              label: Text("Sign Out"))
        ],
        
      )
    );
  }
}
