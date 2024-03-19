import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tbreeapp/features/otp_page/otp_page.dart';

import '../../../services/locator_service.dart';
import '../../../services/navigator_service.dart';

class LoginButtonWidget extends StatelessWidget {
  const LoginButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
              height: 60.0
              , child: GestureDetector(
                onTap: (){
                  locator<NavigatorService>().navigatePush(widget: const OtpPage());
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  color: Colors.lightBlue,
                  elevation: 5.0,
                  child: Center(child: Text('LOGIN', style: TextStyle(fontSize: 16.sp, color: Colors.white, fontWeight: FontWeight.bold))),
                ),
              ));
  }
}