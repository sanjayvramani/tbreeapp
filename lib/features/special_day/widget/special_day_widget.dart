import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tbreeapp/features/special_day/model/special_day_model.dart';

class SpecialDayWidget extends StatefulWidget {
  final SpecialDayModel model;
  const SpecialDayWidget({super.key,required this.model});

  @override
  State<SpecialDayWidget> createState() => _SpecialDayWidgetState();
}

class _SpecialDayWidgetState extends State<SpecialDayWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80.h,
      width: 70.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left:16.0),
            child: Text(widget.model.title,style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),),
          ),
          const SizedBox(height: 16.0,),
          Container(
            height: 60.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: Colors.pink
            ),
          ),
          const SizedBox(height: 16.0,),
           Center(
             child: Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(16.0)
                ),
              
                padding: const EdgeInsets.all(8.0),
               child: const Text('Send Gift',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0
                  ),),
             ),
           )

        ],
      ),
    );
  }
}