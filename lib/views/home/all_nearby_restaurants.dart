import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_clone/common/back_ground_container.dart';
import 'package:grocery_clone/constants/uidata.dart';
import 'package:grocery_clone/views/home/widgets/restaurant_tile.dart';

import '../../common/app_style.dart';
import '../../common/reusable_text.dart';
import '../../constants/constants.dart';

class AllNearbyRestaurants extends StatelessWidget {
  const AllNearbyRestaurants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: kOffWhite,
          title: ReusableText(
            text: 'All Nearby Retauratns',
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
                children: List.generate(restaurants.length, (index) {
                  var restaurant = restaurants[index];
                  return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: RestaurantTile(
                        restaurant: restaurant,
                      ));
                }),
              ),
            ),
          ),
        ));
  }
}
