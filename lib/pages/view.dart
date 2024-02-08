import 'package:flutter/material.dart';
import 'package:vehicle/model/carmodel.dart';
import 'package:vehicle/services/carservice.dart';


class views extends StatefulWidget {
  const views({super.key});

  @override
  State<views> createState() => _viewState();
}

class _viewState extends State<views> {
  Future<List<Posts>> ? data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=Views().viewdata();

  }
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: data,
        builder: (context,snapshot)
        {
          if(snapshot.hasData && snapshot.data!.isNotEmpty)
          {
            return ListView.builder(
                itemCount:snapshot.data!.length,
                itemBuilder:(value,index)
                {
                  return Card(
                      child: Column(
                        children: [
                          ListTile(
                            title: Text("NAME :"+ snapshot.data![index].model.toString()),
                            subtitle: Text("NAME :"+ snapshot.data![index].registration.toString()+"\n"+"Aadhar :"+snapshot.data![index].owner.toString()),
                            leading: CircleAvatar(
                              child: Text(snapshot.data![index].owner[0]),
                            ),
                          )
                        ],
                      )
                  );
                }
            );
          }
          else
          {
            return CircularProgressIndicator();
          }
        }
    );
  }
}
