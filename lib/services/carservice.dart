import 'package:vehicle/model/carmodel.dart';
import 'package:http/http.dart' as http;

class Views
{
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