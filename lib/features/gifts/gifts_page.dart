import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tbreeapp/features/gifts/widget/gift_widget.dart';

import 'model/gift_model.dart';

class GiftsPage extends StatefulWidget {
  const GiftsPage({super.key});

  @override
  State<GiftsPage> createState() => _GiftsPageState();
}

class _GiftsPageState extends State<GiftsPage> {
  
  final List<GiftModel> lstModel = [];

  @override
  void initState() {
    super.initState();

    lstModel.add(GiftModel(title: '7 DAYS CULT',
     subtitle: 'FREE', 
     backgroundColor: Colors.red.shade300,
     imagePath: "assets/image/cult.png"));

     lstModel.add(GiftModel(title: 'UDEMY COURSE',
     subtitle: 'FREE', 
     backgroundColor: Colors.blue.shade300,
     imagePath: "assets/image/Udemycourse.png"));

     lstModel.add(GiftModel(title: 'MOVIE TICKET',
     subtitle: 'FREE', 
     backgroundColor: Colors.green.shade300,
     imagePath: "assets/image/movieticket.png"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Gift'),
      ),
      body: Padding(padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 32.0,),
            Text('Your',style: TextStyle(fontSize: 22.sp,color: Colors.grey.shade700),),
            Text('Gifts',style: TextStyle(fontSize: 22.sp,color: Colors.black),),
            const SizedBox(height: 32.0,),
            ListView.builder(
                itemCount: lstModel.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (_,index){
                  return GiftWidget(model: lstModel[index]);
                })
          ],
        ),
      ),),
    );
  }
}