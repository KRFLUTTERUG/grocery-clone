import 'package:flutter/material.dart';
import 'package:grocery_clone/common/app_style.dart';
import 'package:grocery_clone/common/reusable_text.dart';
import 'package:grocery_clone/constants/constants.dart';

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
      body: Center(
        child: Text('All Fastest Foods'),
      ),
    );
  }
}
