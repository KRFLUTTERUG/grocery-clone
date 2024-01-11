import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_clone/constants/constants.dart';
import 'package:grocery_clone/constants/uidata.dart';
import 'package:grocery_clone/views/home/widgets/restaurant_widget.dart';

class NearbyRestaurants extends StatelessWidget {
  const NearbyRestaurants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(restaurants.length, (index) {
          var restaurant = restaurants[index];
          return Padding(
              padding: const EdgeInsets.all(8.0),
              child: RestaurantWidget(
                image: restaurant['imageUrl'],
                logo: restaurant['logoUrl'],
                title: restaurant['title'],
                time: restaurant['time'],
                rating: restaurant['ratingCount'],
                onTap: () {},
              ));
        }),
      ),
    );
  }
}
