
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../services/locator_service.dart';
import '../../services/navigator_service.dart';
import '../homepage/home_page.dart';

class MyApp extends StatelessWidget 
{

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (context,orientation,screenType){
      return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.lightBlue,
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.lightBlue,
          iconTheme: IconThemeData(
            color: Colors.white
          ),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20.0
          ),
          elevation: 5.0
        ),
        bottomNavigationBarTheme:  BottomNavigationBarThemeData(
          selectedIconTheme: const IconThemeData(
            color: Colors.lightBlue
          ),
          unselectedIconTheme: IconThemeData(
            color: Colors.grey.shade800
          ),
          selectedLabelStyle: const TextStyle(
            color: Colors.lightBlue
          ),
          selectedItemColor: Colors.lightBlue,
          unselectedItemColor: Colors.grey.shade800,
          unselectedLabelStyle: TextStyle(
            color: Colors.grey.shade800
          ),
          showSelectedLabels: true,
          showUnselectedLabels: true
        )
      ),
      debugShowCheckedModeBanner: false,
      home:  const MyHomePage(title: 'App',),
      navigatorKey: locator<NavigatorService>().navigatorKey,
    );
    });
  }

}
