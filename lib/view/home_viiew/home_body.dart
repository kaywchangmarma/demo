import 'package:demo/view/home_viiew/widget/category_widget.dart';
import 'package:demo/view/home_viiew/widget/featured_widget.dart';
import 'package:demo/view/home_viiew/widget/image_slidder.dart';
import 'package:demo/view/home_viiew/widget/new_arrival.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return SizedBox(
      height: height,
      child: ListView(
        children: const [
          ImageSlidder(),
          CategoryWidget(),
          FeaturedWidget(),
          New_Arrival()
        ],
      ),
    );
  }
}
