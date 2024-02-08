import 'package:flutter/material.dart';

import 'package:vehicle/services/carservice.dart';


class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  String owner="";
  String registration="";
  String model="";
  TextEditingController owner1=new TextEditingController();
  TextEditingController registration1=new TextEditingController();
  TextEditingController model1=new TextEditingController();

  void SendValue()
  async
  {
    owner= owner1.text;
    registration=registration1.text;
    model=model1.text;
    final response= await Views().sendata(owner,registration,model);
    print(response);
    if(response["status"]=="success")
    {
      print("successfull");
    }
    else
    {
      print("error");
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(

        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                TextField(
                  decoration: InputDecoration(
                      labelText: "OWNER NAME" ,border: OutlineInputBorder()
                  ),
                  controller: owner1,),
                SizedBox(height: 20,),
                TextField(decoration: InputDecoration(
                    labelText: "REGISTRATION NUMBER" ,border: OutlineInputBorder()
                ),
                  controller: registration1,),
                SizedBox(height: 20,),

                TextField(decoration: InputDecoration(
                    labelText: "MODEL" ,border: OutlineInputBorder()
                ),
                  controller:  model1,),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: SendValue,
                    child: Text("SUBMIT"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
