import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PrivacyPolicySettingWidget extends StatelessWidget {
  const PrivacyPolicySettingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text('Privacy Policy',style: TextStyle(
                fontSize: 18.sp,
                color: Colors.white
              )),
        const Icon(Icons.arrow_forward_ios,color: Colors.white,)
      ],
    );
  }
}