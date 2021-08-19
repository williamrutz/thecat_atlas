import 'package:bordered_text/bordered_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import 'package:thecat_atlas/app/models/cat_model.dart';

class CatItemList extends StatelessWidget {
  final CatModel _cat;

  const CatItemList(
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BorderedText(
              strokeWidth: 4.0,
              strokeColor: Color(0xFF6D4BF8),
              child: Text(
                (_cat.breed.length > 0) ? _cat.breed[0].name : '',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
