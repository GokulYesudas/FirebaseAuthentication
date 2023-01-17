import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'certificate_details.dart';
import 'op.dart';

class HigherStudyDetails extends StatefulWidget {
  const HigherStudyDetails({Key? key}) : super(key: key);

  @override
  State<HigherStudyDetails> createState() => _HigherStudyDetailsState();
}

class _HigherStudyDetailsState extends State<HigherStudyDetails> {

  String valueChoose = "Yes";
  List listItem = [
    "Yes","No"
  ];

  String valueChoose1 = "Yes";
  List listItem1 = [
    "Yes","No"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Higher Study Details"),
      ),
      body:
      SafeArea(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(height: 15,),
                Center(
                  child: const Text("Tell us about higher study preference",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                SizedBox(height: 15,),
                const Text('Country ', textAlign: TextAlign.center,
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
                        hintText: "Which country is your preffered college in",
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text('City', textAlign: TextAlign.center,
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
                        hintText: "Which city is your preffered college in",
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text('Budget', textAlign: TextAlign.center,
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
                        hintText: "Enter your budget for accomodation",
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),

                Row(
                  children:[
                    Text("Do you have a scholarship",textAlign: TextAlign.center,
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

                Row(
                  children:[
                    Text("Do you want accomodation  ",textAlign: TextAlign.center,
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
                      value: valueChoose1,
                      onChanged: (newValue){
                        setState(() {
                          valueChoose1=newValue.toString();
                        });
                      },
                      items: listItem1.map((valueItem){
                        return DropdownMenuItem(child: Text(valueItem),
                          value: valueItem,);
                      }).toList(),
                    ),
                  ],
                ),
                OutlinedButton(
                  style:
                  OutlinedButton.styleFrom(backgroundColor: Colors.white),
                  onPressed: (){Get.to(CertificateDetails());},
                  child: const Text(
                    'CONTINUE',
                    style: TextStyle(fontSize: 20.0,
                      color: Colors.black,),
                  ),
                ),
              ],
            ),
          ),
      )
    );
  }
}
