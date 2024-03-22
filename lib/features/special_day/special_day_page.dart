import 'package:flutter/material.dart';
import 'package:tbreeapp/features/special_day/widget/special_day_widget.dart';

import 'model/special_day_model.dart';

class SpecialDayPage extends StatefulWidget {
  const SpecialDayPage({super.key});

  @override
  State<SpecialDayPage> createState() => _SpecialDayPageState();
}

class _SpecialDayPageState extends State<SpecialDayPage> {


  final List<SpecialDayModel> lstModel =[
    SpecialDayModel(title: "Happy Birthday", 
    imageUrl: '', 
    specialLink: ''),
    SpecialDayModel(title: "Happy Anniversary", 
    imageUrl: '', 
    specialLink: '')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: const Text('Special Day'),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        color: Colors.white,
        child: ListView.builder(
          itemCount: lstModel.length,
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (_,index){
            return Padding(
              padding: const EdgeInsets.only(right:16.0),
              child: SpecialDayWidget(model: lstModel[index] ),
            );
          }),
      ),
    );
  }
}