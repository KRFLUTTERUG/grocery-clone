import 'package:flutter/material.dart';
import 'package:grocery_clone/constants/constants.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kOffWhite,
        title: Text('Category'),
      ),
      body: Center(
        child: Text('Category Page'),
      ),
    );
  }
}
