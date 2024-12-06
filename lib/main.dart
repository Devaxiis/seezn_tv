import 'package:flutter/material.dart';
import 'package:seezn_tv_app/di/injector.dart';

import 'app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  serviceLocator();
  runApp(const MyApp());
}
