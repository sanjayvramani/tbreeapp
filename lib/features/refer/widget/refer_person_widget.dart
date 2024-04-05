import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:tbreeapp/features/refer/model/refer_person_model.dart';

class ReferPersonWidget extends StatelessWidget {
  final ReferPersonModel model;
  const ReferPersonWidget({super.key,required this.model});

  @override
  Widget build(BuildContext context) {
    return Material(
        child: ListTile(
          leading: SizedBox(
          height: 48.0,
          width: 48.0,
          child: CircularPercentIndicator(
              radius: 24.0,
              lineWidth: 4.0,
              animation: true,
              percent: 0.7,
              center: Text(model.percentage.toString()),
              progressColor: Colors.blue.shade900,
            ),
          ),
          title: Text(model.name),
          subtitle: Text(model.status),
          trailing:  const CircleAvatar(
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          child: Icon(Icons.arrow_forward_ios),
          ),
        ),
      );
  }
}