import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tbreeapp/features/elite_program/model/elite_model.dart';

class EliteWidget extends StatelessWidget {
  final EliteModel model;
  const EliteWidget({super.key,required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.lightBlue
      ),
      child: Center(
        child: Text(model.title,style:  TextStyle(fontSize: 18.sp,color: Colors.white),),
      ),
    );
  }
}