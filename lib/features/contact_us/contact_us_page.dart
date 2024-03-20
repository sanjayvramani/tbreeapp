import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
      ),
      body: Padding(padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Get in touch with us',style: TextStyle(fontSize: 18.sp,color: Colors.white)),
          const Padding(padding:  EdgeInsets.symmetric(vertical: 16.0),
          child:  SizedBox(
            width: 64.0,
            child: Divider(
              thickness: 4.0,
              color: Colors.white,
            ),
          ),),
          Text('Rate Us',style: TextStyle(fontSize: 18.sp,color: Colors.white)),
          const Padding(padding:  EdgeInsets.symmetric(vertical: 16.0),
          child:  SizedBox(
            width: 64.0,
            child: Divider(
              thickness: 4.0,
              color: Colors.white,
            ),
          ),),
          Text('Feedback',style: TextStyle(fontSize: 18.sp,color: Colors.white),)
        ],
      ),),
    );
  }
}