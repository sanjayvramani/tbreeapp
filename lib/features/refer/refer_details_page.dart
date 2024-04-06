import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tbreeapp/features/refer/model/refer_person_model.dart';

class ReferDetailsPage extends StatelessWidget {
  final ReferPersonModel model;
  const ReferDetailsPage({super.key, required this.model});

  @override
  Widget build(BuildContext context) {

    final titleTextStyle =  TextStyle(
                        color: Colors.blue,
                        fontSize: 18.sp
                      );
    final subtitleTextStyle = TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp
                      );
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text(model.name),
      ),
      body: Stack(children: [
        SizedBox(
          height: 20.h,
          child: Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  model.name,
                  style: TextStyle(
                      fontSize: 18.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 48.0,
                  width: 48.0,
                  child: CircularPercentIndicator(
                    radius: 24.0,
                    lineWidth: 4.0,
                    animation: true,
                    percent: model.percentage / 100.0,
                    center: Text(model.percentage.toString()),
                    progressColor: Colors.blue.shade900,
                  ),
                )
              ],
            ),
          ),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 60.h,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(64.0),
                      topRight: Radius.circular(64.0))),
              child: Padding(
                padding: const EdgeInsets.only(left:16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(padding:  EdgeInsets.only(left:16.0,top:48.0, bottom: 16.0),
                    child: SizedBox(
                      width: 128.0,
                      child: Divider(
                        height: 16.0,
                        thickness: 4.0,
                        color: Colors.blue,
                      ),
                    ),),
                    ListTile(
                      title:  Text('Referred Date:',
                      style: titleTextStyle,),
                      subtitle:  Text('24-02-2020',
                      style: subtitleTextStyle,),
                    ),
                     ListTile(
                      title:  Text('Project',
                      style: titleTextStyle,),
                      subtitle:  Text(model.name,
                      style: subtitleTextStyle,),
                    ),
                    
                    ListTile(
                      title:  Text('Current Status:',
                      style: titleTextStyle,),
                      subtitle:  Text(model.status,
                      style: subtitleTextStyle,),
                    ),
                     ListTile(
                      title:  Text('Remarks:',
                      style: titleTextStyle,),
                      subtitle:  Text('Spoke to Mr. Rohan, will be visiting site this weeked',
                      style: subtitleTextStyle,
                      ),
                    ),
                    Padding(padding: const EdgeInsets.only(top: 24.0,left: 16.0),
                    child: SizedBox(
                      height: 48.0,
                      width: 220.0,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          border: Border.all(
                            color: Colors.blue,
                            width: 2.0
                          )
                        ),
                        child:  Center(child: Text('Contact CRM Team',style: titleTextStyle,)),
                      ),
                    ),)

                  ],
                ),
              ),
            )),
      ]),
    );
  }
}
