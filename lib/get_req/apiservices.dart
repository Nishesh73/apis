import 'dart:convert';

import 'package:apisproject/models/listmodels.dart';
import 'package:apisproject/models/mapstaringpoint.dart';
import 'package:apisproject/models/singleapimodel.dart';
import 'package:http/http.dart' as http;
Future<SingleApi> getSingleApiData()async{

  var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts/1"));
  if(response.statusCode==200){


    SingleApi model = SingleApi.fromJson(jsonDecode(response.body));
    print("json response value is ${response.body}");
    print("map data is ${jsonDecode(response.body)}");
    return model;
  }
else{

  throw Exception('Failed to load API data');
}


}
//list of apis
Future<List<ListOJModel?>?> getListJData()async{

  var response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
  if(response.statusCode==200){


 List lOfmapData = jsonDecode(response.body);
//  print(lOfmapData);
List<ListOJModel?> instancelistOjModel = lOfmapData.map((singleMapdata) { 
 return ListOJModel.fromJson(singleMapdata);
 }).toList();

print(instancelistOjModel);
    return instancelistOjModel;
  }
else{

  throw Exception('Failed to load API data');
}


}

//start map
Future<StaringMap> getstartMapJData()async{

  var response = await http.get(Uri.parse("https://reqres.in/api/unknown"));
  if(response.statusCode==200){


  Map<String, dynamic> mapdata = jsonDecode(response.body);

 StaringMap staringMapModel = StaringMap.fromJson(mapdata);
 print(staringMapModel);



    return staringMapModel;
  }
else{

  throw Exception('Failed to load API data');
}


}