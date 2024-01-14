import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_clone/common/app_style.dart';
import 'package:grocery_clone/common/reusable_text.dart';
import 'package:grocery_clone/constants/constants.dart';
import 'package:grocery_clone/views/home/widgets/food_tile.dart';

import '../../common/back_ground_container.dart';
import '../../constants/uidata.dart';

class AllFastestFoods extends StatelessWidget {
  const AllFastestFoods({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: kOffWhite,
        title: ReusableText(
          text: 'All Fastest Foods',
          style: appStyle(13, kGray, FontWeight.w600),
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
