import 'package:flutter/material.dart';
import 'package:tbreeapp/features/gifts/gift_intro_page.dart';
import 'package:tbreeapp/features/gifts/model/gift_model.dart';
import 'package:tbreeapp/services/locator_service.dart';
import 'package:tbreeapp/services/navigator_service.dart';

class GiftWidget extends StatelessWidget {
  final GiftModel model;
  const GiftWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        locator<NavigatorService>().navigatePush(widget: GiftIntroPage(model: model,));
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom:  32.0),
        child: Card(
          color: model.backgroundColor,
          child: SizedBox(
            height: 150.0,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset(model.imagePath)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(padding: const EdgeInsets.only(left: 32.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(model.subtitle,style: const TextStyle(
                        fontSize: 20.0,
                        color: Colors.white
                      ),),
                      Text(model.title,style: const TextStyle(
                        fontSize: 24.0,
                        color: Colors.white,
                        fontWeight: FontWeight.w400
                      ))
                    ],
                  ),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}