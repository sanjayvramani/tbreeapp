import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SectionItemWidget extends StatefulWidget {
  final String title;
  final Function onTap;

  // ignore: use_key_in_widget_constructors
  const SectionItemWidget(
      {super.key, required this.title, required this.onTap});

  @override
  State<SectionItemWidget> createState() => _SectionItemWidgetState();
}

class _SectionItemWidgetState extends State<SectionItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      margin: const EdgeInsets.all(0.0),
      color: Colors.lightBlue,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.zero)),
      child: GestureDetector(
        onTap: () {
          widget.onTap();
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.title,
                style: TextStyle(color: Colors.white, fontSize: 16.sp),
              ),
              const Icon(Icons.arrow_forward, color: Colors.white)
            ],
          ),
        ),
      ),
    );
  }
}
