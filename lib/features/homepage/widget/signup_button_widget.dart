import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../services/locator_service.dart';
import '../../../services/navigator_service.dart';
import '../../login_page/login_page.dart';

class SignupButtonWidget extends StatelessWidget {
  const SignupButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
              height: 60.0
              , child: GestureDetector(
                onTap: (){
                  locator<NavigatorService>().navigatePush(widget: const LoginPage());
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  color: Colors.lightBlue,
                  elevation: 5.0,
                  child: Center(child: Text('SIGN UP', style: TextStyle(fontSize: 16.sp, color: Colors.white, fontWeight: FontWeight.bold))),
                ),
              ));
  }
}