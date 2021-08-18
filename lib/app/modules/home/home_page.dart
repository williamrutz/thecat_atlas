import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thecat_atlas/app/models/cat_model.dart';
import 'package:thecat_atlas/app/modules/home/components/cat_item_list.dart';
import 'package:thecat_atlas/app/shared/theme_utils.dart';

import 'home_store.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key? key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeStore> {
  var appBar = AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    iconTheme: IconThemeData(color: ThemeUtils.primaryColor),
  );
  @override
  void initState() {
    super.initState();
    controller.initPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        endDrawer: Drawer(),
        appBar: appBar,
        body: Stack(children: [
          Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('lib/assets/images/background.png'),
                    fit: BoxFit.cover)),
          ),
          Container(
              margin: EdgeInsets.only(
                  top: (appBar.preferredSize.height +
                      ScreenUtil().statusBarHeight)),
              padding: EdgeInsets.only(left: 8.0, right: 8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextFormField(
                    style: GoogleFonts.montserrat(),
                    cursorColor: Colors.grey,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8.0),
                        fillColor: Colors.white,
                        filled: true,
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.grey)),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.grey)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.grey))),
                  ),
                  Expanded(child: _buildCatsGrid()),
                ],
              ))
        ]));
  }

  Widget _buildCatsGrid() {
    return Observer(builder: (_) {
      return GridView.builder(
          itemCount: controller.entities.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (context, index) {
            var count = index;
            if ((count + 1) >= controller.entities.length) {
              // controller.searchCats();
              controller.loadMore();
            }

            if (controller.entities.length > 0) {
              final cat = controller.entities[index];
              return CatItemList(cat);
            }

            return const Center(child: CircularProgressIndicator());
          });
    });
  }
}
