// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:myapp/services/api_service.dart';

class categorySlider extends StatefulWidget {
  const categorySlider({
    super.key,
  });

  @override
  State<categorySlider> createState() => _categorySliderState();
}

class _categorySliderState extends State<categorySlider> {
  List<Text> categoryList = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    ApiService.getCategories().then((categories) {
      setState(() {
        categoryList.add(const Text("All"));
        for (var category in categories) {
          categoryList.add(Text(category.toString().toUpperCase()));
        }
      });
      print(categoryList);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0, left: 10, bottom: 20),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          width: 600,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: categoryList),
        ),
      ),
    );
  }
}
