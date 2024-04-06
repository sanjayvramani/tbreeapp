import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tbreeapp/features/challenges/challenge_questions_page.dart';
import 'package:tbreeapp/services/navigator_service.dart';

import '../../services/locator_service.dart';

class ChallengesPage extends StatelessWidget {
  const ChallengesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 60.h,
              decoration:  const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                ),
               // color: Colors.black,
              ),
              child:  Stack(
                children: [
                
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: 50.h,
                      child: Container(
                        decoration:  BoxDecoration(
                          color: Colors.purple.shade400,
                          borderRadius: const BorderRadius.horizontal(
                            left: Radius.circular(16),
                            right: Radius.circular(16),
                          )
                        ),
                        //child: const ,
                        
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional.topCenter,
                    child: Image.asset('assets/image/demo-1.png',
                    height: 20.h,
                    width: 20.h,),
                  ),
                   Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Align(
                          alignment: Alignment.centerLeft,
                          child:  Padding(
                            padding: EdgeInsets.only(left:32.0),
                            child: Text('Who Am I?',style: TextStyle(color: Colors.white,fontSize: 32.0,
                            fontWeight: FontWeight.w600),),
                          ),
                                                ),
                                                 const SizedBox(height: 96.0,),
                          
                                                Align(
                          alignment: Alignment.bottomLeft,
                          child:  Padding(
                            padding: const EdgeInsets.only(bottom: 96.0,left: 32.0),
                            child: GestureDetector(
                              onTap: (){
                                locator<NavigatorService>().navigatePush(widget: const ChallengeQuestionsPage());
                              },
                              child: const Row(
                                children: [
                                  Text('Know more',style: TextStyle(color: Colors.yellowAccent,fontSize: 16.0),),
                                  SizedBox(width: 8.0,),
                                  Icon(Icons.arrow_forward_ios,color: Colors.yellowAccent)
                                ],
                              ),
                            ),
                          ),
                                                )
                            ],
                          )
                  )
                ],
              ),

                )
              ),
        ]
            ),
          );
      
  }
}