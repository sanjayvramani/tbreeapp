import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'model/dashboard_section_item_model.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  final List<DashboardSectionItemModel> lstSection = [
    DashboardSectionItemModel(title: 'SUPPORT', 
    icon: const Icon(Icons.arrow_forward_ios_rounded), 
    backgroundcolor: Colors.lightGreenAccent),

    DashboardSectionItemModel(title: 'SOBHA ELITE', 
    icon: const Icon(Icons.arrow_forward_ios_rounded), 
    backgroundcolor: Colors.pinkAccent),
    
    DashboardSectionItemModel(title: 'SPECIAL DAY', 
    icon: const Icon(Icons.arrow_forward_ios_rounded), 
    backgroundcolor: Colors.yellowAccent),
    
    DashboardSectionItemModel(title: 'GIFT', 
    icon: const Icon(Icons.arrow_forward_ios_rounded), 
    backgroundcolor: Colors.orangeAccent)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
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
              const Text('Hello Rohan'),
              const Text('What would you like to do today?'),
              const SizedBox(height: 16.0,), 
              GridView.count(crossAxisCount: 2,
                 crossAxisSpacing: 4.0,  
                mainAxisSpacing: 8.0,  
                shrinkWrap: true,
                children: List.generate(lstSection.length , (index) {
                  final model = lstSection[index];
                  return SizedBox(
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
                            child: Text(model.title,style: TextStyle(fontSize: 20.sp, color: Colors.white, fontWeight: FontWeight.w400),)),
                            const SizedBox(height: 16.0,),
                          Align(
                            alignment: Alignment.topLeft,
                            child: CircleAvatar(child: model.icon,
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,),
                          )
                        ],
                      )
                ));
                }),),
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
        
        onTap: (index){

        },
        items: const [
           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}