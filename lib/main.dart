import 'package:flutter/material.dart';
import 'package:seezn_tv_app/src/injector.dart';

import 'app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  serviceLocator();
  runApp(const MyApp());
}
