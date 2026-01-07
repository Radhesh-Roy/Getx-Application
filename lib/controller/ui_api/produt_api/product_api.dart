import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

class GetProduct{
Future<List> getProduct()async{
  try{
    Uri uri=Uri.parse("https://eplay.coderangon.com/api/products/latests");
    var response= await http.get(uri);
    if(response.statusCode==200){
      
      return jsonDecode(response.body)["data"];
    }
    

  }catch(e){
    log("error: $e");
  }
  return [];
}

}