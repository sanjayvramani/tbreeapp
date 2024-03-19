import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

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
              
              onPressed: (){}, child: const Text('Submit'))
          ]
        )
    ));
  }
}