import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ProjectPage extends StatelessWidget {
  final String imagePath;
  const ProjectPage({super.key,required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Padding(padding: const EdgeInsets.all(16.0),
      child: Container(
        height: 30.h,
                  decoration:  BoxDecoration(
                    image: DecorationImage(image: AssetImage(imagePath),fit: BoxFit.fill)
                  ),
                  //color: Colors.black,
                )),
    );
  }
}