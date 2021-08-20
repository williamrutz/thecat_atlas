import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:thecat_atlas/app/models/breed_model.dart';
import 'package:thecat_atlas/app/modules/detail/components/skill_item.dart';
import 'package:thecat_atlas/app/modules/detail/detail_store.dart';
import 'package:flutter/material.dart';
import 'package:thecat_atlas/app/shared/custom_drawer.dart';
import 'package:thecat_atlas/app/shared/theme_utils.dart';

import 'components/cat_photo_item_list.dart';

class DetailPage extends StatefulWidget {
  final BreedModel breedModel;
  final String title;

  const DetailPage(
      {Key? key, this.title = 'DetailPage', required this.breedModel})
      : super(key: key);

  @override
  DetailPageState createState() => DetailPageState();
}

class DetailPageState extends ModularState<DetailPage, DetailStore> {
  var appBar = AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    iconTheme: IconThemeData(color: ThemeUtils.primaryColor),
  );

  @override
  void initState() {
    super.initState();
    controller.id = widget.breedModel.id;
    controller.initPage();
  }

  @override
  Widget build(BuildContext context) {
    BreedModel model = widget.breedModel;

    return Scaffold(
      extendBodyBehindAppBar: true,
      endDrawer: CustomDrawer(),
      appBar: appBar,
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('lib/assets/images/background.png'),
                  fit: BoxFit.cover)),
        ),
        SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(
                top: (appBar.preferredSize.height +
                    ScreenUtil().statusBarHeight)),
            padding: EdgeInsets.only(left: 8.0, right: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 200,
                  margin: EdgeInsets.only(top: 50, left: 50, right: 50),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(
                        model.image!.url!,
                      ),
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  model.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  model.description,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'TEMPERAMENT',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                  color: ThemeUtils.primaryColor,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  model.temperament,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'ORIGIN',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Divider(
                            height: 10,
                            thickness: 1,
                            indent: 20,
                            endIndent: 20,
                            color: ThemeUtils.primaryColorDark,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            model.origin,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Text(
                            'LIFE SPAN',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Divider(
                            height: 10,
                            thickness: 1,
                            indent: 20,
                            endIndent: 20,
                            color: ThemeUtils.primaryColor,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            model.life_span,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                SkillItem('Adaptability', model.adaptability),
                SizedBox(
                  height: 20,
                ),
                SkillItem('Affection Level', model.affection_level),
                SizedBox(
                  height: 20,
                ),
                SkillItem('Child Friendly', model.child_friendly),
                SizedBox(
                  height: 20,
                ),
                SkillItem('Grooming', model.grooming),
                SizedBox(
                  height: 20,
                ),
                SkillItem('Intelligence', model.intelligence),
                SizedBox(
                  height: 20,
                ),
                SkillItem('Health Issues', model.health_issues),
                SizedBox(
                  height: 20,
                ),
                SkillItem('Social Needs', model.social_needs),
                SizedBox(
                  height: 20,
                ),
                SkillItem('Strange Friendly', model.stranger_friendly),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Other Photos',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Divider(
                  height: 10,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                  color: ThemeUtils.primaryColor,
                ),
                SizedBox(
                  height: 10,
                ),
                _buildCatsPhotoGrid()
              ],
            ),
          ),
        )
      ]),
    );
  }

  Widget _buildCatsPhotoGrid() {
    return Observer(
      builder: (_) {
        return (controller.entities.length < 1 && controller.loading)
            ? _buildLoading()
            : GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: controller.entities.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                ),
                itemBuilder: (context, index) {
                  if (controller.entities.length > 0) {
                    final cat = controller.entities[index];
                    return CatPhotoItemList(cat);
                  } else {
                    return Container(
                      child: Center(
                        child: Text(
                          'Nenhum gatinho disponivel.',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    );
                  }
                },
              );
      },
    );
  }
}

Widget _buildLoading() {
  return Center(
    child: CircularProgressIndicator(
      color: ThemeUtils.primaryColor,
    ),
  );
}
