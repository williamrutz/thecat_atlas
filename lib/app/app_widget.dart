import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thecat_atlas/app/core/theme_thecat.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 760),
      builder: () => MaterialApp(
            title: 'TheCat Atlas',
            debugShowCheckedModeBanner: false,
            theme: ThemeTheCat.theme(),
          ).modular()
      );
  }
}
