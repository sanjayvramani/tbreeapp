import 'package:flutter/material.dart';


abstract class INewReferController
{
  void dispose();
}


class NewReferController implements INewReferController
{

  final TextEditingController txtName = TextEditingController(text: "");
  final TextEditingController txtMobileNumber = TextEditingController(text: "");
  final TextEditingController txtEmailId = TextEditingController(text: "");

  @override
  void dispose()
  {
    txtName.dispose();
    txtMobileNumber.dispose();
    txtEmailId.dispose();
  }
}