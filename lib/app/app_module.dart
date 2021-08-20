import 'package:flutter_modular/flutter_modular.dart';
import 'package:thecat_atlas/app/core/connection/connection_error.dart';
import 'package:thecat_atlas/app/modules/detail/detail_module.dart';
import 'package:thecat_atlas/app/modules/main_page/main_page.dart';
import 'package:thecat_atlas/app/repository/cat_repository.dart';
import 'package:thecat_atlas/app/services/cat_service.dart';

import 'modules/home/home_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => CatRepository()),
    Bind((i) => CatService(i.get())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (context, args) => MainPage()),
    ModuleRoute('/home', module: HomeModule()),
    ModuleRoute('/detail', module: DetailModule()),
    ChildRoute('/connection_error', child: (context, args) => ConnectionError()),
  ];

}