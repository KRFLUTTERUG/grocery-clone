import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:grocery_clone/common/custom_appbar.dart';
import 'package:grocery_clone/common/custom_container.dart';
import 'package:grocery_clone/constants/constants.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimary,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(130.h),
        child: CustomAppbar()
      ),
      body: SafeArea(
        child: CustomContainer(
          containerContent: Container(),
        ),
      )
    );
  }
}