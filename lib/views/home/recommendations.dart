import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_clone/views/home/widgets/food_tile.dart';

import '../../common/app_style.dart';
import '../../common/back_ground_container.dart';
import '../../common/reusable_text.dart';
import '../../constants/constants.dart';
import '../../constants/uidata.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondary,
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: kSecondary,
        title: ReusableText(
          text: 'Recommendations',
          style: appStyle(13, kLightWhite, FontWeight.w600),
        ),
      ),
      body: SafeArea(
        child: BackGroundContainer(
          color: Colors.white,
          child: Padding(
            padding: EdgeInsets.all(4.h),
            child: ListView(
              scrollDirection: Axis.vertical,
              children: List.generate(foods.length, (index) {
                var food = foods[index];
                return Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: FoodTile(
                      food: food,
                    ));
              }),
            ),
          ),
        ),
      )
    );
  }
}
