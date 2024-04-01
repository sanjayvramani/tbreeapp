import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tbreeapp/features/support_page/mobx/support_page_mobx.dart';
import 'package:tbreeapp/features/support_page/support_chat_page.dart';
import 'package:tbreeapp/features/support_page/support_section_one_widget.dart';
import 'package:tbreeapp/features/support_page/support_section_two_widget.dart';
import 'package:tbreeapp/services/locator_service.dart';

class SupportPage extends StatefulWidget {
  const SupportPage({super.key});

  @override
  State<SupportPage> createState() => _SupportPageState();
}

class _SupportPageState extends State<SupportPage> {

  final SupportPageMobx _supportPageMobx = locator<SupportPageMobx>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        //elevation: 5.0,
        title: const Text('Support'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Image.asset(
              'assets/logo/tbree.png',
              width: 128,
              height: 128,
              cacheHeight: 128,
              cacheWidth: 128,
            ),
            SizedBox(
              height: 10.h,
            ),
            Observer(
              key: const Key('support_page'),
              builder: (context){
                if(_supportPageMobx.supportsectionindex==1) {
                  return const SupportSectionOneWidget();
                } 
                  return const SupportSectionTwoWidget();
              })
          ],
        ),
      ),
    );
  }
}
