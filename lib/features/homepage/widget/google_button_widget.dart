import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class GoogleButtonWidget extends StatelessWidget {
  const GoogleButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
                  height: 50.0,
                  width: 45.w,
                  child: Container(
                    color: Colors.white,
                    child: Center(
                      child: Text('Google', style: TextStyle(fontSize: 16.sp, color: Colors.black, fontWeight: FontWeight.bold)),
                    ),
                  ),
                );
  }
}