import 'package:flutter/material.dart';
import 'package:vehicle/pages/view.dart';

class frontpage extends StatelessWidget {
  const frontpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("VEHICLE DETAILS",style:
        TextStyle(color:Colors.blueGrey),
        ),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>views()));
                }, child:Text("VIEW")),
                SizedBox(height: 30,),
                ElevatedButton(onPressed: (){}, child: Text("ADD")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
