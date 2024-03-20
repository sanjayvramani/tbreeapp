import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PushNotificationSettingWidget extends StatefulWidget {
  const PushNotificationSettingWidget({super.key});

  @override
  State<PushNotificationSettingWidget> createState() => _PushNotificationSettingWidgetState();
}

class _PushNotificationSettingWidgetState extends State<PushNotificationSettingWidget> {
  
  bool isSelected = true;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
         Text('Push Notification',style: TextStyle(
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