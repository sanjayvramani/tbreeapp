import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tbreeapp/features/contact_us/contact_us_page.dart';
import 'package:tbreeapp/features/elite_program/elite_program_widget.dart';
import 'package:tbreeapp/features/gifts/gifts_page.dart';
import 'package:tbreeapp/features/setting_page/setting_page.dart';
import 'package:tbreeapp/features/support_page/support_page.dart';
import 'package:tbreeapp/services/navigator_service.dart';

import '../../services/locator_service.dart';
import 'model/dashboard_section_item_model.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  int _currentIndex = 0;

  final List<DashboardSectionItemModel> lstSection = [
    DashboardSectionItemModel(title: 'SUPPORT', 
    icon: const Icon(Icons.arrow_forward), 
    backgroundcolor: Colors.green.shade300),

    DashboardSectionItemModel(title: 'SOBHA ELITE', 
    icon: const Icon(Icons.arrow_forward), 
    backgroundcolor: Colors.red.shade300),
    
    DashboardSectionItemModel(title: 'SPECIAL DAY', 
    icon: const Icon(Icons.arrow_forward), 
    backgroundcolor: Colors.blue.shade300),
    
    DashboardSectionItemModel(title: 'GIFT', 
    icon: const Icon(Icons.arrow_forward), 
    backgroundcolor: Colors.purple.shade300)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               SizedBox(
                height: 30.h,
                child: Container(
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 16.0,),
               Text('Hello Rohan',style: TextStyle(fontSize: 20.sp),),
               Text('What would you like to do today?',style: TextStyle(fontSize: 18.sp),),
              const SizedBox(height: 16.0,), 
              GridView.count(crossAxisCount: 2,
                 crossAxisSpacing: 4.0,  
                mainAxisSpacing: 8.0,  
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: List.generate(lstSection.length , (index) {
                  final model = lstSection[index];
                  return GestureDetector(
                    onTap: (){
                      if(index==0)
                      {
                        locator<NavigatorService>().navigatePush(widget: const SupportPage());
                      }
                      else if(index==1)
                      {
                        locator<NavigatorService>().navigatePush(widget: const EliteProgramPage());
                      }
                      else if(index==3)
                      {
                        locator<NavigatorService>().navigatePush(widget: const GiftsPage());
                      }

                    },
                    child: SizedBox(
                    height: 100,
                    child:Container(
                      padding: const EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                            borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                            color: model.backgroundcolor
                          ),
                    child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(model.title,style: TextStyle(fontSize: 16.sp, color: Colors.white, fontWeight: FontWeight.w400),)),
                              const SizedBox(height: 8.0,),
                            Align(
                              alignment: Alignment.topLeft,
                              child: CircleAvatar(radius: 16.0,
                              backgroundColor: Colors.white,
                              foregroundColor: Colors.black,child: model.icon,),
                            )
                          ],
                        )
                                    )),
                  );
                }),),
              const SizedBox(height: 16.0,),
              Text('Weekly Deals',style: TextStyle(fontSize: 18.sp),),
              const SizedBox(height: 16.0,),
              SizedBox(
                height: 30.h,
                child: Container(
                  color: Colors.pinkAccent,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          
          if(index==3)
          {
            locator<NavigatorService>().navigatePush(widget: const SettingPage());
          }
          else if(index==2)
          {
            locator<NavigatorService>().navigatePush(widget: const ContactUsPage());
          }
          else
          {
            if(_currentIndex!=index)
          {
            setState(() {
              _currentIndex = index;
            });
          }
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Setting'),

        ],
      ),
    );
  }
}