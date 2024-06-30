import 'package:apisproject/get_req/listofjsonscreen.dart';
import 'package:apisproject/get_req/screensingleapi.dart';
import 'package:apisproject/models/singleapimodel.dart';
import 'package:apisproject/get_req/startmapscreen.dart';
import 'package:apisproject/post_req/postmodel/postscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: ScreenSingleApi(),
      // home: MyWidget(),
      home: PostScreen(),
    );
  }
}