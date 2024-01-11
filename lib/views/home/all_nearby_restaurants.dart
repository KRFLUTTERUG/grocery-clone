import 'package:flutter/material.dart';

import '../../common/app_style.dart';
import '../../common/reusable_text.dart';
import '../../constants/constants.dart';

class AllNearbyRestaurants extends StatelessWidget {
  const AllNearbyRestaurants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: kOffWhite,
        title: ReusableText(
          text: 'All Nearby Retauratns',
          style: appStyle(13, kGray, FontWeight.w600),
        ),
      ),
      body: Center(
        child: Text('All Nearby Retauratns'),
      ),
    );
  }
}
