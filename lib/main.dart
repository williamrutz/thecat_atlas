import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app/app_module.dart';
import 'app/app_widget.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await loadEnv();
  
  runApp(ModularApp(module: AppModule(), child: AppWidget()));
}

Future<void> loadEnv() async {
  const isProduction = bool.fromEnvironment('dart.vm.product');

  await dotenv.load(fileName: isProduction ? '.env' : '.env_dev');
}
