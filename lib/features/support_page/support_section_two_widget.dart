import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tbreeapp/features/support_page/support_chat_page.dart';
import 'package:tbreeapp/services/navigator_service.dart';
import '../../services/locator_service.dart';
import 'widget/section_item_widget.dart';

class SupportSectionTwoWidget extends StatefulWidget {
  const SupportSectionTwoWidget({super.key});

  @override
  State<SupportSectionTwoWidget> createState() =>
      _SupportSectionTwoWidgetState();
}

class _SupportSectionTwoWidgetState extends State<SupportSectionTwoWidget> {
  
 // final SupportPageMobx _supportPageMobx = locator<SupportPageMobx>();
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          'Hello Rohan,',
          style: TextStyle(
              fontSize: 20.sp,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 16.0,
        ),
        Text(
          'We are glad to assist you',
          style: TextStyle(
              fontSize: 18.sp,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
        Text(
          'Please choose a option from below',
          style: TextStyle(
              fontSize: 18.sp,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 96.0,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'I want help with...',
                style: TextStyle(color: Colors.white, fontSize: 16.sp),
              ),
              const SizedBox(
                height: 16.0,
              ),
              SectionItemWidget(title: 'A. I want help with my EMI', onTap: () {
                _openSupportChatPage();
              }),
              const SizedBox(
                height: 16.0,
              ),
              SectionItemWidget(title: 'B. I want help with tax issue', onTap: () {
                _openSupportChatPage();
              }),
              const SizedBox(
                height: 16.0,
              ),
              SectionItemWidget(title: 'C. I want help with legal documents', onTap: () {
                _openSupportChatPage();
              }),
              const SizedBox(
                height: 16.0,
              ),
              SectionItemWidget(title: 'D. Others', onTap: () {
                _openSupportChatPage();
              }),
            ],
          ),
        )
      ],
    );
  }

  void _openSupportChatPage()
  {
    locator<NavigatorService>().navigatePush(widget: const SupportChatPage());
  }
}
