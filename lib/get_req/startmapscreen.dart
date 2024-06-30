import 'package:apisproject/get_req/apiservices.dart';
import 'package:apisproject/models/mapstaringpoint.dart';
import 'package:flutter/material.dart';

class StartMapScreen extends StatefulWidget {
  const StartMapScreen({super.key});

  @override
  State<StartMapScreen> createState() => _StartMapScreenState();
}

class _StartMapScreenState extends State<StartMapScreen> {
  StaringMap? startmapInst;

    @override
  void initState() {
    // TODO: implement initState
    super.initState();

fetchApiPost();

  
  }
  fetchApiPost()async{
 startmapInst =  await  getstartMapJData();

 setState(() {
   
 });


  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(children: [
        Text("${startmapInst?.page??"no page"}"),
        Expanded(child: ListView.builder(
          itemCount: startmapInst?.data?.length,
          
          itemBuilder: (context, index){
            return Card(

              child: Column(
                children: [
                  Text("${startmapInst?.data?[index]?.name}"),
                    Text("${startmapInst?.support?.text}"),
                ],
              ),
            );


          }))

      ],),
    );
  }
}