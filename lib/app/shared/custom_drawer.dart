import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:thecat_atlas/app/shared/theme_utils.dart';

class CustomDrawer extends Drawer {
  CustomDrawer()
      : super(
            child: Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                ),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    ListTile(
                      title: Center(
                        child: Text(
                          'Home',
                          style: TextStyle(
                              fontSize: 20,
                              color: (Modular.to.modulePath == '/')
                                  ? ThemeUtils.primaryColor
                                  : Colors.white),
                        ),
                      ),
                      onTap: () {
                        var route = '/';
                        if (Modular.to.modulePath != route) {
                          Modular.to.popUntil(ModalRoute.withName(route));
                        }
                      },
                    ),
                    Divider(
                      height: 1,
                      thickness: 1,
                      indent: 50,
                      endIndent: 50,
                      color: ThemeUtils.primaryColor,
                    ),
                    ListTile(
                      title: Center(
                        child: Text(
                          'Listagem',
                          style: TextStyle(
                              fontSize: 20,
                              color: (Modular.to.modulePath == '/home')
                                  ? ThemeUtils.primaryColor
                                  : Colors.white),
                        ),
                      ),
                      onTap: () {
                        var route = '/home';
                        if (Modular.to.modulePath != route) {
                          Modular.to.pushNamedAndRemoveUntil(route, ModalRoute.withName('/'));
                        }
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
}
