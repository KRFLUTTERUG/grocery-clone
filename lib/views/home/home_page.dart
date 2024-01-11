import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_clone/common/custom_appbar.dart';
import 'package:grocery_clone/common/custom_container.dart';
import 'package:grocery_clone/constants/constants.dart';
import 'package:grocery_clone/views/home/widgets/category_list.dart';

import '../../common/heading.dart';

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
                onTap: () {},
              ),
              Heading(
                text: "Try Something New",
                onTap: () {},
              ),
              Heading(
                text: "Food Closer to you",
                onTap: () {},
              )
            ],
          )),
        ));
  }
}
