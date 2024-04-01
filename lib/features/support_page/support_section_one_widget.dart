import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tbreeapp/features/support_page/widget/section_item_widget.dart';

import '../../services/locator_service.dart';
import 'mobx/support_page_mobx.dart';

class SupportSectionOneWidget extends StatefulWidget {
  const SupportSectionOneWidget({super.key});

  @override
  State<SupportSectionOneWidget> createState() =>
      _SupportSectionOneWidgetState();
}

class _SupportSectionOneWidgetState extends State<SupportSectionOneWidget> {

  final SupportPageMobx _supportPageMobx = locator<SupportPageMobx>();

  


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
              SectionItemWidget(title: 'A. Backend CRM Team', onTap: () {
                _goToNextWidget();
              }),
              const SizedBox(
                height: 16.0,
              ),
              SectionItemWidget(title: 'B. Handover Team', onTap: () {
                _goToNextWidget();
              }),
              const SizedBox(
                height: 16.0,
              ),
              SectionItemWidget(
                  title: 'C. Property Management Team', onTap: () {
                    _goToNextWidget();
                  }),
              const SizedBox(
                height: 16.0,
              ),
              SectionItemWidget(title: 'A. FAQs', onTap: () {
                _goToNextWidget();
              }),
            ],
          ),
        )
      ],
    );
  }
  void _goToNextWidget()
  {
    _supportPageMobx.supportsectionindex=2;
  }
}
