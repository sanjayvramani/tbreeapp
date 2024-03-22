import 'package:flutter/material.dart';

class QuestionNavigatorWidget extends StatelessWidget {
  const QuestionNavigatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding:  const EdgeInsets.all(16.0),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OutlinedButton(onPressed: (){

        },
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.white,
          side: const BorderSide(color: Colors.white)
        ),
        child: const Text('< Back')),

        OutlinedButton(onPressed: (){

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