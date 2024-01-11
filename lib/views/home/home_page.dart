import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:grocery_clone/common/custom_appbar.dart';
import 'package:grocery_clone/common/custom_container.dart';
import 'package:grocery_clone/constants/constants.dart';
import 'package:grocery_clone/views/home/recommendations.dart';
import 'package:grocery_clone/views/home/widgets/category_list.dart';
import 'package:grocery_clone/views/home/widgets/food_list.dart';
import 'package:grocery_clone/views/home/widgets/nearby_list.dart';

import '../../common/heading.dart';
import 'all_fastest_foods.dart';
import 'all_nearby_restaurants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimary,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(130.h), child: CustomAppbar()),
        body: SafeArea(
          child: CustomContainer(
              containerContent: Column(
            children: [
              CategoryList(),
              Heading(
                text: "Nearby Restaurants",
                onTap: () {
                  Get.to(() => AllNearbyRestaurants(),
                      transition: Transition.cupertino,
                      duration: Duration(milliseconds: 900));
                },
              ),
              NearbyRestaurants(),
              Heading(
                text: "Try Something New",
                onTap: () {
                  Get.to(() => Recommendations(),
                      transition: Transition.cupertino,
                      duration: Duration(milliseconds: 900));
                },
              ),
              FoodsList(),
              Heading(
                text: "Food Closer to you",
                onTap: () {
                  Get.to(() => AllFastestFoods(),
                      transition: Transition.cupertino,
                      duration: Duration(milliseconds: 900));
                },
              ),
              FoodsList(),
            ],
          )),
        ));
  }
}
