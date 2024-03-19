import 'package:flutter/material.dart';
import 'package:tbreeapp/services/locator_service.dart';

import 'features/myapp/my_app.dart';

void main() {
  setupLocator();
  runApp(const MyApp());
}

