import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ChatNotificationSettingWidget extends StatefulWidget {
  const ChatNotificationSettingWidget({super.key});

  @override
  State<ChatNotificationSettingWidget> createState() => _ChatNotificationSettingWidgetState();
}

class _ChatNotificationSettingWidgetState extends State<ChatNotificationSettingWidget> {
  bool isSelected = true;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
         Text('Chat Notification',style: TextStyle(
                fontSize: 18.sp,
                color: Colors.white
              )),
        Switch(value: isSelected, 
        onChanged: (value){
          setState(() {
            isSelected = value;
          });
        })
        //Icon(Icons.arrow_forward_ios)
      ],
    );
  }
}