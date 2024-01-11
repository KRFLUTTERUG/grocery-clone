import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_clone/constants/constants.dart';
import 'package:grocery_clone/constants/uidata.dart';
import 'package:grocery_clone/views/home/widgets/food_widget.dart';

class FoodsList extends StatelessWidget {
  const FoodsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 210.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(foods.length, (index) {
          var food = foods[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: FoodWidget(
              image: food['imageUrl'],
              time: food['time'],
              title: food['title'],
              price: food['price'].toStringAsFixed(2),
              onTap: () {},
            )
          );
        }),
      ),
    );
  }
}
