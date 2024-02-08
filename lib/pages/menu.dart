import 'package:flutter/material.dart';

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
                ElevatedButton(onPressed: (){}, child:Text("SEARCH")),
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
