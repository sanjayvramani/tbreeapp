import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tbreeapp/features/contact_us/contact_us_page.dart';
import 'package:tbreeapp/features/elite_program/elite_program_widget.dart';
import 'package:tbreeapp/features/gifts/gifts_page.dart';
import 'package:tbreeapp/features/project/project_page.dart';
import 'package:tbreeapp/features/refer/refer_page.dart';
import 'package:tbreeapp/features/reward/reward_page.dart';
import 'package:tbreeapp/features/setting_page/setting_page.dart';
import 'package:tbreeapp/features/special_day/special_day_page.dart';
import 'package:tbreeapp/features/support_page/support_page.dart';
import 'package:tbreeapp/services/navigator_service.dart';

import '../../services/locator_service.dart';
import '../challenges/challenges_page.dart';
import 'model/dashboard_section_item_model.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  int _currentIndex = 0;

  var buidlingImageList = <String>[
    'assets/image/building1.jpg',
    'assets/image/building2.jpg',
    'assets/image/building3.jpg',
    'assets/image/building4.jpg'
  ];

  var images_bottom = <String>[
    "assets/image/demo-bottom-1.png",
    "assets/image/demo-bottom-2.png",
    "assets/image/demo-bottom-3.png",
    "assets/image/demo-bottom-4.png",
    "assets/image/demo-bottom-5.png",
  ];

  final PageController _pageController =  PageController(viewportFraction: 0.7);

  final List<DashboardSectionItemModel> lstSection = [
    DashboardSectionItemModel(title: 'SUPPORT', 
    icon: const Icon(Icons.arrow_forward), 
    backgroundcolor: Colors.green.shade300,
    imageUrl: 'assets/image/Support.png'),

    DashboardSectionItemModel(title: 'SOBHA ELITE', 
    icon: const Icon(Icons.arrow_forward), 
    backgroundcolor: Colors.red.shade300,
    imageUrl: 'assets/image/shobha-plus.png'),
    
    DashboardSectionItemModel(title: 'SPECIAL DAY', 
    icon: const Icon(Icons.arrow_forward), 
    backgroundcolor: Colors.blue.shade300,
    imageUrl: 'assets/image/Events.png'),
    
    DashboardSectionItemModel(title: 'GIFT', 
    icon: const Icon(Icons.arrow_forward), 
    backgroundcolor: Colors.purple.shade300,
    imageUrl: 'assets/image/Gift.png')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 5.0,
        title: const Text('Home'),
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               SizedBox(
                height: 30.h,
                child: CarouselSlider(items: buidlingImageList.map((imagePath) =>  GestureDetector(
                  onTap: (){
                    locator<NavigatorService>().navigatePush(widget: ProjectPage(imagePath: imagePath));
                  },
                  child: Container(
                    decoration:  BoxDecoration(
                      image: DecorationImage(image: AssetImage(imagePath),fit: BoxFit.fill)
                    ),
                    //color: Colors.black,
                  ),
                )).toList(), 
                options: CarouselOptions(
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  viewportFraction: 1.0,
                  aspectRatio: 1.75/1,
                  autoPlay: true,
                  reverse: false,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800)
                )),
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
                      else if(index==2)
                      {
                        locator<NavigatorService>().navigatePush(widget: const SpecialDayPage());
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
                            image: DecorationImage(image: AssetImage(model.imageUrl),fit: BoxFit.cover)

                            //color: model.backgroundcolor
                          ),
                    child: Stack(
                      children: [
                        Column(
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
                            ),
                            /* Align(
                              alignment: Alignment.bottomRight,
                              child: Image.asset(model.imageUrl,
                              height: 116,
                              width: 116,
                              cacheHeight: 116,
                              cacheWidth: 116,),
                            ) */
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
                child: PageView(
                  controller: _pageController,
                  children: List.generate(images_bottom.length, (index) {
                    final imagePath = images_bottom[index];

                    return Transform.translate(offset: Offset(0-16.w, 0.0),
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 1.5.w),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius:  const BorderRadius.all(Radius.circular(10.0)),
                              image: DecorationImage(image: AssetImage(imagePath),fit: BoxFit.fill)
                            ),
                          ),
                        )
                      ],
                    ),);
                  }),
                ),
                /* child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                 // shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (_,index){
                  return Padding(
                    padding: const EdgeInsets.only(right:8.0),
                    child: SizedBox(
                      //color: Colors.pinkAccent,
                      width: 400,
                      child: Row(
                        children: [
                          Container(width: 150,
                          color: Colors.black,
                          child: const Center(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('ONE',style: TextStyle(color: Colors.white,fontSize: 20.0),),
                                Text('FREE',style: TextStyle(color: Colors.white,fontSize: 20.0),),
                                Text('YOGA',style: TextStyle(color: Colors.white,fontSize: 20.0),),
                                Text('CLASS',style: TextStyle(color: Colors.white,fontSize: 20.0),),
                                Text('AT YOUR',style: TextStyle(color: Colors.white,fontSize: 20.0),),
                                Text('DOORSTEP',style: TextStyle(color: Colors.white,fontSize: 20.0),),
                                ],
                            ),
                          ),
                          ),
                          const SizedBox(
                     // color: Colors.pinkAccent,
                      width: 250,
                      child:  Image(image:  AssetImage('assets/images/yoga.png'),fit: BoxFit.cover,))
                        ],
                      ),
                    ),
                  );
                }), */
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index){
          if(index==1)
          {
            locator<NavigatorService>().navigatePush(widget: const ChallengesPage());
          }
          else if(index==3)
          {
            locator<NavigatorService>().navigatePush(widget: const RewardPage());
          }
          else if(index==2)
          {
            locator<NavigatorService>().navigatePush(widget: const ReferPage());
          }
          else if(index==4)
          {
            locator<NavigatorService>().navigatePush(widget: const SettingPage());
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
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Challenge'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Referral'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Rewards'),
          BottomNavigationBarItem(icon: Icon(Icons.monetization_on_sharp), label: 'More'),

        ],
      ),
    );
  }
}