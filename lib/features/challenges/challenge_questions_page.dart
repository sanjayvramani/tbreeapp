import 'package:flutter/material.dart';
import 'package:tbreeapp/features/challenges/widget/question_answer_option_widget.dart';
import 'package:tbreeapp/features/challenges/widget/question_navigator_widget.dart';
import 'package:tbreeapp/features/challenges/widget/question_widget.dart';

class ChallengeQuestionsPage extends StatelessWidget {
  const ChallengeQuestionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Stack(
      children: [
        Padding(padding:  EdgeInsets.only(
          top: 16.0,
          left: 16.0,
          right: 16.0,
          bottom: 72.0),
        child: Column(
          children: [
            QuestionWidget(),
            SizedBox(height: 16.0,),
            Expanded(
             // flex: 1,
              child: QuestionAnswerOptionWidget(),
            ),
            SizedBox(height: 16.0,),
          ],
        ),),
         Align(
          alignment: Alignment.bottomCenter,
          child: QuestionNavigatorWidget(),
        )
      ],
    ),
    );
  }
}