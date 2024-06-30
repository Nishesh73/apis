import 'package:apisproject/post_req/postmodel/postapi.dart';
import 'package:apisproject/post_req/postmodel/postmodel.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  TextEditingController emailc= TextEditingController();
   TextEditingController pawsswordc= TextEditingController();
   TokenModel? tokenModel;
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title:tokenModel==null? Text("post"):Text("${tokenModel?.token}"),),

      body: Column(children: [
        TextField(
          controller:emailc ,
        ),
         TextField(
          controller:pawsswordc ,
        ),
        ElevatedButton(onPressed: ()async{
     tokenModel = await postData(emailc.text, pawsswordc.text);

setState(() {
  
});
        }, child: Text("login"))

      ],),
    );
  }
}