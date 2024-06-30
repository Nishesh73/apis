import 'dart:async';

import 'package:apisproject/post_req/postmodel/createmodel.dart';
import 'package:apisproject/post_req/postmodel/postapi.dart';
import 'package:apisproject/post_req/postmodel/postmodel.dart';
import 'package:flutter/material.dart';

class CreateScreen extends StatefulWidget {
  const CreateScreen({super.key});

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  TextEditingController namec= TextEditingController();
   TextEditingController jobc= TextEditingController();
   CreateModel? createModel;
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title:createModel==null? Text("create"):Text("${createModel?.name}"),),

      body: Column(children: [
        TextField(
          controller:namec ,
        ),
         TextField(
          controller:jobc ,
        ),
        ElevatedButton(onPressed: ()async{

          try {
             createModel = await createData(namec.text, jobc.text);
            
          } catch (e) {
            print("exception is $e");
            
          }
    

setState(() {
  
});
        }, child: Text("create"))

      ],),
    );
  }
}