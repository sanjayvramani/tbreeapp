import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tbreeapp/features/gifts/model/gift_model.dart';

class GiftIntroPage extends StatefulWidget {
  final GiftModel model;
  const GiftIntroPage({super.key,required this.model});

  @override
  State<GiftIntroPage> createState() => _GiftIntroPageState();
}

class _GiftIntroPageState extends State<GiftIntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.model.backgroundColor,
      appBar: AppBar(
        backgroundColor: widget.model.backgroundColor,
      ),
      body:  Padding(padding:  const EdgeInsets.all(16.0),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                const Text('FREE',style: TextStyle(
                            color: Colors.white,
                            fontSize: 32.0
                          )),
                const Text('7 DAYS CULT',style: TextStyle(
                            color: Colors.white,
                            fontSize: 24.0
                          )),
                const SizedBox(height: 40.0,),
                const Text('Culr is a Banglore based fitness startup focused on training programmes, that use no machines or equipments. Running, Yoga, Dance Fitness, Power Workouts, Boxing & More at Gyms near you.',style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
                textAlign: TextAlign.justify,),
                const SizedBox(height: 24.0,),
                Row(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Container(
                        color: Colors.orange,
                        child: const Center(
                          child: Text('CLAIM',style: TextStyle(
                            color: Colors.white
                          ),),
                        ),
                      ),
                    ),
                    const SizedBox(width: 16.0,),
                    SizedBox(
                      height: 100,
                      width: 100,
                      child: Container(
                        color: Colors.lightBlue,
                        child: const Center(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text('HOW',style: TextStyle(
                            color: Colors.white
                          )),
                          Text('IT',style: TextStyle(
                            color: Colors.white
                          )),
                          Text('WORKS',style: TextStyle(
                            color: Colors.white
                          )),
                            ],
                          ),),
                        ),
                      ),
                    
                  ],
                ),
                 const SizedBox(height: 64.0,)
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(widget.model.imagePath,
            cacheHeight: 256,
                     // cacheWidth: 256,
                     // width: 256,
            height: 256,),
          ),
                
        ],
      ),),
    );
  }
}