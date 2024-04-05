import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tbreeapp/features/refer/widget/refer_person_widget.dart';

import 'model/refer_person_model.dart';

class ReferPage extends StatefulWidget {
  const ReferPage({super.key});

  @override
  State<ReferPage> createState() => _ReferPageState();
}

class _ReferPageState extends State<ReferPage> {


  final List<ReferPersonModel> lstPerson = [
    ReferPersonModel(name: 'Person 1', status: 'Pending', percentage: 0.0),
    ReferPersonModel(name: 'Person 2', status: 'Visit Done', percentage: 0.0),
    ReferPersonModel(name: 'Person 3', status: 'On Hault', percentage: 0.0),
    ReferPersonModel(name: 'Person 4', status: 'Canceled', percentage: 0.0),
    ReferPersonModel(name: 'Person 5', status: 'Running', percentage: 0.0)
  ];

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text('Refer'),
      ),
      body: Padding(padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(padding: const EdgeInsets.symmetric(vertical: 24.0),
          child: SizedBox(
            height: 64.0,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(
                  color: Colors.blueAccent
                )
              ),
              child:  const Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.blueAccent,
                      child: Icon(Icons.add),
                    ),
                    SizedBox(width: 24.0,),
                    Text('Refer New Person',
                    style: TextStyle(
                      fontSize: 24.0,
                      color: Colors.white
                    ),)
                  ],
                ),
              ),
            ),
          ),),
          const Text('Old Refferals',
           style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w600
                    ),),
           Expanded(
             child: ListView.builder(
              //shrinkWrap: true,
              itemCount: lstPerson.length,
              itemBuilder: (_,index){
                return Padding(
                  padding: const EdgeInsets.only(bottom:8.0),
                  child: ReferPersonWidget(model: lstPerson[index]),
                );
              }),
           ) 
        ],
      ),),
    );
  }
}