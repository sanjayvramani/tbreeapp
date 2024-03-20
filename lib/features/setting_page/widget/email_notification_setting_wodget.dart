import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EmailNotificationSettingWidget extends StatefulWidget {
  const EmailNotificationSettingWidget({super.key});

  @override
  State<EmailNotificationSettingWidget> createState() => _EmailNotificationSettingWidgetState();
}

class _EmailNotificationSettingWidgetState extends State<EmailNotificationSettingWidget> {
 bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
         Text('Email Notification',style: TextStyle(
                fontSize: 18.sp,
                color: Colors.white
              )),
        Switch(value: isSelected, 
        onChanged: (value){
          setState(() {
            isSelected = value;
          });
        })
      ],
    );
  }
}