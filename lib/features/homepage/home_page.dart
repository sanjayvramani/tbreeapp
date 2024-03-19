
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tbreeapp/features/homepage/widget/facebook_button_widget.dart';
import 'package:tbreeapp/features/homepage/widget/google_button_widget.dart';
import 'package:tbreeapp/features/homepage/widget/signin_button_widget.dart';
import 'package:tbreeapp/features/homepage/widget/signup_button_widget.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 65.h,
              //color: Colors.green,
              child:   Stack(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('MOST' , style: TextStyle(fontSize: 20.sp, color: Colors.white, fontWeight: FontWeight.bold)),
                          Text('ADMIRED', style: TextStyle(fontSize: 20.sp, color: Colors.white, fontWeight: FontWeight.bold)),
                          Text('REAL ESTATE', style: TextStyle(fontSize: 20.sp, color: Colors.white, fontWeight: FontWeight.bold)),
                          Text('COMPANY', style: TextStyle(fontSize: 20.sp, color: Colors.white, fontWeight: FontWeight.bold)),
                          const SizedBox(width: 36.0, child:  Divider(color: Colors.white, thickness: 4.0,)),
                          //const Icon(Icons.home,size: 64.0,)
                        ],
                      ),
                  ),
                ],
              ),
            ),
            Text('Continue with', style: TextStyle(fontSize: 16.sp, color: Colors.white, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16.0,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                 GoogleButtonWidget(),
                 FacebookButtonWidget()
              ],
            ),
            const SizedBox(height: 16.0,),
            
            const SignupButtonWidget(),
          
            const SizedBox(height: 16.0,),
            
            const SignInButtonWidget()

          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
