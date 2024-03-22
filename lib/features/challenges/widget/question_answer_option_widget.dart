import 'package:flutter/material.dart';

class QuestionAnswerOptionWidget extends StatefulWidget {
  const QuestionAnswerOptionWidget({super.key});

  @override
  State<QuestionAnswerOptionWidget> createState() => _QuestionAnswerOptionWidgetState();
}

class _QuestionAnswerOptionWidgetState extends State<QuestionAnswerOptionWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
                itemCount: 50,
                itemBuilder: (_,index){
                return  Padding(
                  padding: const EdgeInsets.only(bottom:8.0),
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration:  BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(16.0)),
                      border: Border.all(
                        color: Colors.white
                      )
                    ),
                    child: Row(
                      children: [
                        Text('Option $index',style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14.0
                        ),),
                      ],
                    ),
                  ),
                );
              });
  }
}