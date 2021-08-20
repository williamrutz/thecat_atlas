import 'package:bordered_text/bordered_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:thecat_atlas/app/models/breed_model.dart';
import 'package:thecat_atlas/app/models/cat_model.dart';

class CatPhotoItemList extends StatelessWidget {
  final CatModel _cat;

  const CatPhotoItemList(
    this._cat, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
      color: Colors.transparent,
      child: Container(
        width: double.infinity,
        height: 130,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: CachedNetworkImageProvider(
                _cat.url,
              ),
              fit: BoxFit.cover,
              alignment: Alignment.center,
            ),
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
