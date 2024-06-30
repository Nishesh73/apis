import 'dart:convert';

import 'package:apisproject/post_req/postmodel/postmodel.dart';
import 'package:http/http.dart' as http;
Future<TokenModel> postData(String email, String password)async{

  var respose =await http.post(Uri.parse("https://reqres.in/api/login"),
  body: {
    "email": email,
    "password": password
}
  
  );

  
  if(respose.statusCode==200){
    Map<String,dynamic> mapData = jsonDecode(respose.body);
  TokenModel tokenModel = TokenModel.fromJson(mapData);
  return tokenModel;



  }else{

    throw Exception("There is a error");
  }
  



}