import 'package:demo/api_controller/slider_api.dart';
import 'package:demo/view/home_viiew/widget/brand.dart';
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
  // void initState() {
  //   // TODO: implement initState
  //
  //
  //
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(

        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(Icons.sort),
          color: Colors.black,
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
        ),

        backgroundColor: Colors.white,
        elevation: 0,

        actions: [
          Container(
            height: width*.125 ,
            width: width*.73,
            decoration: BoxDecoration (
              color: const Color(0xFF979797).withOpacity(0.1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: const TextField(

              decoration: InputDecoration(
                hintText: 'Search Product',
               enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                prefixIcon: Icon(Icons.search)
              ),
            ),
          ),


          IconButton(
            icon:  const Icon(Icons.notifications),
            color: Colors.black,
            onPressed: () {

            },
          ),
        ],


      ),
      body: SizedBox(
        height: height,
        child: ListView(
          children:  const [
          ImageSlidder(),
            CategoryWidget(),
            Brand(),
            FeaturedWidget(),
            New_Arrival(),

            SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
}
