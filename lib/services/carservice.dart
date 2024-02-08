import 'dart:convert';

import 'package:vehicle/model/carmodel.dart';
import 'package:http/http.dart' as http;

class Views
{
  Future<dynamic> sendata(
      String model,String registration,String owner)async
  {
    var client=http.Client();
    var apiUrl=Uri.parse("http://10.100.15.113:3002/motor/add");
    var response=await client.post(apiUrl,
        headers: <String,String>
        {
          "Content-Type":"application/json; charset=UTF-8"
        },
        body: jsonEncode(<String,String>
        {
          "Registration":registration,
          "Model": model,
          "Owner": owner,
        }
        )
    );

    print(response);
    if(response.statusCode==200)
    {
      return json.decode(response.body);
    }
    else
    {
      print("hello");
      throw Exception("failed to load data");
    }

  }
  Future<List<Posts>> viewdata() async
  {
    var client=http.Client();
    var url=Uri.parse("http://10.100.15.113:3002/motor/view");
    var response=await client.get(url);
    print(response);
    if(response.statusCode==200)
    {
      return postsFromJson(response.body);
    }
    else
    {
      return [];
    }
  }
}