import 'package:flutter/material.dart';
import '../widgets/category_slider.dart';
import '../widgets/main_product_car.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "E-commy",
                  style: TextStyle(fontSize: 18),
                ),
                Icon(Icons.person)
              ],
            ),
          ),
          categorySlider(),
          Padding(
            padding: EdgeInsets.only(left: 10.0, top: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  MainProductCard(),
                  MainProductCard(),
                  MainProductCard(),
                  MainProductCard(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
