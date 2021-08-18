import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thecat_atlas/app/models/cat_model.dart';
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
              margin: EdgeInsets.only(top: (appBar.preferredSize.height + ScreenUtil().statusBarHeight)),
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
                  Expanded(
                    child: _buildCatsGrid()
                  ),
                ],
              )
          )
        ]));
  }

  Widget _buildCatsGrid() {
    return FutureBuilder<List<CatModel>>(
        future: controller.catFuture,
        builder: (context, snapshot){

          if(snapshot.hasData){
            var cats = snapshot.data;
             return GridView.builder(
                   itemCount: cats?.length,
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                     crossAxisCount: 2,
                   ),
                   itemBuilder: (context, index) {
                     var cat = cats?[index];
                     return Card(
                       margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                       color: Colors.transparent,
                       child: Container(
                         width: double.infinity,
                         height: 130,
                         decoration: BoxDecoration(
                           image: DecorationImage(
                             image: NetworkImage('${cat?.url}'),
                             fit: BoxFit.cover,
                             alignment: Alignment.center,
                           ),
                           borderRadius: BorderRadius.circular(10)
                         ),
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.end,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             BorderedText(
                               strokeWidth: 4.0,
                               strokeColor: Color(0xFF6D4BF8),
                               child: Text(
                                 '${cat?.id}', 
                                 textAlign: TextAlign.center,
                                 style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 16
                                 ),
                               ),
                             )
                           ],
                         ),
                       ),
                     );
                   });
          }else if(snapshot.hasError){
            print(snapshot.error);
            return Center(child: Text('Erro', style: TextStyle(color: Colors.white),),);
          }

          return const Center(child: CircularProgressIndicator());
          
        }
    );
  }
}


