import 'package:flutter_modular/flutter_modular.dart';
import 'package:thecat_atlas/app/modules/main_page/main_page.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (context, args) => MainPage()),
    ModuleRoute('/home', module: HomeModule()),
  ];

}