import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:state_management_demo/screens/accom_details.dart';
import 'op.dart';

class CertificateDetails extends StatefulWidget {
  const CertificateDetails({Key? key}) : super(key: key);

  @override
  State<CertificateDetails> createState() => _CertificateDetailsState();
}

class _CertificateDetailsState extends State<CertificateDetails> {

  String valueChoose = "Yes";
  List listItem = [
    "Yes","No"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Certificate Details"),
      ),
      body:
        SafeArea(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  SizedBox(height: 15,),
                  const Text("Tell us about your Certificates",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),),
                  SizedBox(height: 15,),
                  const Text('GMAT/GRE result (For graduates) ', textAlign: TextAlign.center,
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
                          hintText: "Enter your GMAT/GRE score",
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text('IELTS/TOEFL results (For graduates) ', textAlign: TextAlign.center,
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
                          hintText: "Enter your IELTS/TOEFL score",
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

                  OutlinedButton(
                    style:
                    OutlinedButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: (){Get.to(accomodation_Details());},
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
