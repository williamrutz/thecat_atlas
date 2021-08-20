import 'package:flutter/material.dart';
import 'package:thecat_atlas/app/models/breed_model.dart';
import 'package:thecat_atlas/app/shared/theme_utils.dart';

class SkillItem extends StatelessWidget {
  final String _name;
  final int _skill;

  const SkillItem(this._name, this._skill, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(
              _name,
              style: TextStyle(color: Colors.white),
              textAlign: TextAlign.right,
            ),
          ),
        ),
        Expanded(
          child: Column(
            children: [
              SizedBox(
                height: 15,
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 5,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) {
                    return Padding(
                      padding: const EdgeInsets.all(2),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 23,
                          color: (index < _skill)
                              ? ThemeUtils.primaryColor
                              : Colors.grey,
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
