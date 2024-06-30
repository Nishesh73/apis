import 'package:apisproject/get_req/apiservices.dart';
import 'package:apisproject/models/listmodels.dart';
import 'package:flutter/material.dart';
class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
List<ListOJModel?>? listinstance;
  bool datafetch=false;

  fetcApiPost()async{
    datafetch=false;

   listinstance = await  getListJData();
    datafetch=true;
   setState(() {
     
   });
  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();

fetcApiPost();

  
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:datafetch? ListView.builder(
        shrinkWrap: true,
        itemCount: listinstance!.length ,
        itemBuilder: (context, index){

          return Container(
            height: 100,
            child: Column(children: [
              Text("${listinstance![index]?.body??"no id"}"),
            ],));



        }):Text("loading.."),


    );
  }
}