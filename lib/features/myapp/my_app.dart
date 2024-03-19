
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tbreeapp/services/locator_service.dart';
import 'package:tbreeapp/services/navigator_service.dart';

import '../homepage/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context,orientation,screenType){
      return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
      navigatorKey: locator<NavigatorService>().navigatorKey,
    );
    });
  }
}
