import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:state_management_demo/screens/accom_details.dart';
import 'package:state_management_demo/screens/higherstudydetails.dart';


class StudentRegForm extends StatefulWidget {
  const StudentRegForm({Key? key}) : super(key: key);

  @override
  State<StudentRegForm> createState() => _StudentRegFormState();
}

class _StudentRegFormState extends State<StudentRegForm> {

  String valueChoose = "Yes";
  List listItem = [
    "Yes","No"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Welcome to Registration Desk")),
    body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(height: 15,),
              const Text("Tell us more about yourself.",style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 15,),
              const Text('First Name ', textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: SizedBox(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      hintText: "Enter you first name",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Last Name', textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: SizedBox(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      hintText: "Enter your last name",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Age', textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: SizedBox(
                  width: 350,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                  FilteringTextInputFormatter.digitsOnly],
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      hintText: "Enter your age",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Contact Number', textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: SizedBox(
                  width: 350,
                  child: TextField(
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly],
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      hintText: "Enter your contact number",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('Email', textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: SizedBox(
                  width: 350,
                  child: TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      hintText: "Enter your email",
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children:[
                  Text("          Are you a graduate:  ",textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )),
                  SizedBox(
                    width:10,
                  ),
                  DropdownButton(
                    hint: Text("Select Option"),
                    icon: Icon(Icons.arrow_drop_down),
                    iconSize: 36,
                    value: valueChoose,
                    onChanged: (newValue){
                      setState(() {
                        valueChoose=newValue.toString();
                      });
                    },
                    items: listItem.map((valueItem){
                      return DropdownMenuItem(child: Text(valueItem),
                        value: valueItem,);
                    }).toList(),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              OutlinedButton(
                style:
                OutlinedButton.styleFrom(backgroundColor: Colors.white),
                onPressed: (){Get.to(HigherStudyDetails());},
                child: const Text(
                  'Continue',
                  style: TextStyle(fontSize: 20.0,
                    color: Colors.black,),
                ),
              ),
            ],
          ),
        ),
    ),


    );

  }
}
