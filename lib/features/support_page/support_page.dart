import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({super.key});

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        //elevation: 5.0,
        title: const Text('Support'),
      ),
      body: Padding(padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.asset('assets/logo/tbree.png',
                          width: 128,
                          height: 128,
                          cacheHeight: 128,
                          cacheWidth: 128,) ,
          SizedBox(
            height: 10.h,
          ),
           Text('Hello Rohan,',style: TextStyle(fontSize: 20.sp,color: Colors.white, fontWeight: FontWeight.bold),),
          const SizedBox(height: 16.0,),
           Text('We are glad to assist you',style: TextStyle(fontSize: 18.sp,color: Colors.white,fontWeight: FontWeight.bold),),
           Text('Please choose a option from below',style: TextStyle(fontSize: 18.sp,color: Colors.white,fontWeight: FontWeight.bold),),
          const SizedBox(height: 96.0,),

           Padding(padding:  const EdgeInsets.symmetric(horizontal: 64.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text('I want help with...',style: TextStyle(color: Colors.white,fontSize: 16.sp),),
           const SizedBox(height: 16.0,),
           Card(
            elevation: 5.0,
            margin:  const EdgeInsets.all(0.0),
            color:  Colors.lightBlue,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.zero)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('A. Backend CRM Team',style: TextStyle(color: Colors.white,fontSize: 16.sp),),
                  const Icon(Icons.arrow_forward,color: Colors.white)
                ],
              ),
            ),
           ),
           const SizedBox(height: 16.0,),
           Card(
            elevation: 5.0,
            margin:  const EdgeInsets.all(0.0),
            color:  Colors.lightBlue,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.zero)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('A. Backend CRM Team',style: TextStyle(color: Colors.white,fontSize: 16.sp),),
                  const Icon(Icons.arrow_forward,color: Colors.white)
                ],
              ),
            ),
           ),
           const SizedBox(height: 16.0,),
           Card(
            elevation: 5.0,
            margin:  const EdgeInsets.all(0.0),
            color:  Colors.lightBlue,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.zero)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('A. Backend CRM Team',style: TextStyle(color: Colors.white,fontSize: 16.sp),),
                  const Icon(Icons.arrow_forward,color: Colors.white)
                ],
              ),
            ),
           ),
           const SizedBox(height: 16.0,),
           Card(
            elevation: 5.0,
            margin:  const EdgeInsets.all(0.0),
            color:  Colors.lightBlue,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.zero)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('A. Backend CRM Team',style: TextStyle(color: Colors.white,fontSize: 16.sp),),
                  const Icon(Icons.arrow_forward,color: Colors.white,)
                ],
              ),
            ),
           ),

            ],
          ),)


        ],
      ),),
    );
  }
}