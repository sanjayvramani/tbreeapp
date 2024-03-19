import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tbreeapp/features/dashboard/dashboard_page.dart';
import 'package:tbreeapp/services/navigator_service.dart';

import '../../services/locator_service.dart';

class OtpPage extends StatefulWidget {
  const OtpPage({super.key});

  @override
  State<OtpPage> createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
         // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
             Align(
              alignment: Alignment.center,
              child: Text('Please enter OTP here that is to your',style: TextStyle(fontSize: 16.sp, color: Colors.white, fontWeight: FontWeight.w400))),
             Align(
              alignment: Alignment.center,
              child: Text('provided mobile number.',style: TextStyle(fontSize: 16.sp, color: Colors.white, fontWeight: FontWeight.w400),)),

            OutlinedButton(
              
              onPressed: (){
                locator<NavigatorService>().pushAndRemoveUntil(widget: const DashboardPage(), predict: (Route<dynamic> route) => true);
              }, child: const Text('Submit'))
          ]
        )
    ));
  }
}