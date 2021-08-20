import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thecat_atlas/app/shared/custom_drawer.dart';
import 'package:thecat_atlas/app/shared/theme_utils.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeUtils.init(context);

    var appBar = AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      iconTheme: IconThemeData(color: ThemeUtils.primaryColor),
    );

    return Scaffold(
      extendBodyBehindAppBar: true,
        endDrawer: CustomDrawer(),
        appBar: appBar,
        body: Container(
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('lib/assets/images/background.png'),
                        fit: BoxFit.cover)),
              ),
              Container(
                  margin:
                      EdgeInsets.only(top: ScreenUtil().statusBarHeight + 80),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Text(
                        "MISSÃO C.A.T.E",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 40),
                      ),
                      SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Todos os gatos da galáxia CAT-5721, tem o mesmo objetivo, embarcar em suas naves e chegar até a galáxia vizinha, a via láctea, e nela chegar até o planeta Terra, para o treinamento no CATE - Centro de Ambientação TecnológicaEspacial",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 18,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(height: 25),
                      Container(
                        width: double.infinity,
                        height: 60,
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: ThemeUtils.primaryColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10))),
                            onPressed: () {
                              Modular.to.pushNamed('/home');
                            },
                            child: Text("CONHEÇA A LISTA DE RAÇAS")),
                      ),
                    ],
                  )),
              Positioned(
                width: MediaQuery.of(context).size.width,
                top: MediaQuery.of(context).size.height * .71,
                child: Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'lib/assets/images/cat_logo.png',
                      width: ScreenUtil().setWidth(249),
                    ),
                  ],
                )),
              )
            ],
          ),
        ));
  }
}
