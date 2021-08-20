import 'package:thecat_atlas/app/modules/detail/detail_page.dart';
import 'package:thecat_atlas/app/modules/detail/detail_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DetailModule extends Module {
  @override
  final List<Bind> binds = [
    Bind((i) => DetailStore(i.get())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => DetailPage(breedModel: args.data)),
  ];
}
