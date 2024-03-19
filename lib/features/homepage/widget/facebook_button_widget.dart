import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FacebookButtonWidget extends StatelessWidget {
  const FacebookButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                  height: 50.0,
                  width: 45.w,
                  child: Container(
                    color: Colors.white,
                    child: Center(
                      child: Text('Facebook', style: TextStyle(fontSize: 16.sp, color: Colors.black, fontWeight: FontWeight.bold)),
                    ),
                  ),
                );
  }
}