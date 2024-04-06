import 'package:flutter/material.dart';
import 'package:tbreeapp/features/challenges/mobx/challenges_mobx.dart';

class QuestionNavigatorWidget extends StatelessWidget {

  final ChallengesMobx mobx;
  const QuestionNavigatorWidget({super.key,required this.mobx});

  @override
  Widget build(BuildContext context) {
    return Padding(padding:  const EdgeInsets.all(16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OutlinedButton(onPressed: (){
          mobx.changeCurrentIndex(mobx.currentIndex-1);
        },
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.white,
          side: const BorderSide(color: Colors.white)
        ),
        child: const Text('< Back')),

        OutlinedButton(onPressed: (){
          mobx.changeCurrentIndex(mobx.currentIndex+1);
        }, 
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.white,
          side: const BorderSide(color: Colors.white)
        ),
        child: const Text('Next >')),
      ],
    ),);
  }
}