import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tbreeapp/features/setting_page/widget/chat_notification_setting_widget.dart';
import 'package:tbreeapp/features/setting_page/widget/email_notification_setting_wodget.dart';
import 'package:tbreeapp/features/setting_page/widget/privacy_policy_setting_widget.dart';
import 'package:tbreeapp/features/setting_page/widget/push_notification_setting_widget.dart';
import 'package:tbreeapp/features/setting_page/widget/toc_setting_widget.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body:  Padding(
        padding:  const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding:  const EdgeInsets.only(bottom:8.0),
              child:  Text('NOTIFICATION',style: TextStyle(
                fontSize: 18.sp,
                color: Colors.white
              ),),
            ),
             const Padding(
              padding:   EdgeInsets.only(bottom:8.0),
              child:  PushNotificationSettingWidget(),
            ),
             const Padding(
              padding:  EdgeInsets.only(bottom:8.0,top: 8.0),
              child:  ChatNotificationSettingWidget(),
            ),
             const Padding(
              padding:  EdgeInsets.only(bottom:8.0,top: 8.0),
              child:  EmailNotificationSettingWidget(),
            ),
             Padding(
              padding:  const EdgeInsets.only(bottom:8.0),
              child:  Text('LEGAL',style: TextStyle(
                fontSize: 18.sp,
                color: Colors.white
              )),
            ),
              const Padding(
              padding:  EdgeInsets.only(bottom:8.0,top: 8.0),
              child:  PrivacyPolicySettingWidget(),
            ),
              const Padding(
              padding:  EdgeInsets.only(bottom:8.0,top: 8.0),
              child:  TocSettingWidget(),
            ),
          ],
        ),
      ),
    );
  }
}