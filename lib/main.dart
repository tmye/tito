import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';
import 'package:tito/bloc/geolocation/geolocation_bloc.dart';
import 'package:tito/components/constante.dart';
import 'package:tito/controllers/location_controller.dart';
import 'package:tito/repository/geolocation_repository.dart';
import 'package:tito/views/courses/course.dart';
//import 'package:tito/views/loading.dart';
import 'package:tito/views/start.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: kReleaseMode,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Get.put(LocationController());
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.white, primaryColor: appColor),
      //home: Loading(),
      home: Start(),
    );
  }
}
