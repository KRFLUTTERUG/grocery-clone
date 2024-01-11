import 'package:flutter/material.dart';

import '../../common/app_style.dart';
import '../../common/reusable_text.dart';
import '../../constants/constants.dart';

class Recommendations extends StatelessWidget {
  const Recommendations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: kOffWhite,
        title: ReusableText(
          text: 'Recommendations',
          style: appStyle(13, kGray, FontWeight.w600),
        ),
      ),
      body: Center(
        child: Text('Recommendations'),
      ),
    );
  }
}
