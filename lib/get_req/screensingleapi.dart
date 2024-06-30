import 'package:apisproject/get_req/apiservices.dart';
import 'package:apisproject/models/singleapimodel.dart';
import 'package:flutter/material.dart';

class ScreenSingleApi extends StatefulWidget {
  
   ScreenSingleApi({super.key});

  @override
  State<ScreenSingleApi> createState() => _ScreenSingleApiState();
}

class _ScreenSingleApiState extends State<ScreenSingleApi> {
  SingleApi? singleApi;
  bool datafetch=false;

  fetchApiPost()async{
    datafetch=false;

   singleApi = await getSingleApiData();
    datafetch=true;
   setState(() {
     
   });
  }



  @override
  void initState() {
    // TODO: implement initState
    super.initState();

fetchApiPost();

  
  }
  @override
  Widget build(BuildContext context) {
    return datafetch?   Column(
      children: [
        Text(
        
         "${singleApi?.id}"
        ),
         Text(
        
         "${singleApi?.userId}"
        ),
         Text(
        
         "${singleApi?.title}"
        ),
         Text(
        
         "${singleApi?.body}"
        ),
      ],
    ):Center(child: CircularProgressIndicator());
  }
}