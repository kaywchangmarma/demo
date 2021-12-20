import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSlidder extends StatefulWidget {
  const ImageSlidder({Key? key}) : super(key: key);

  @override
  _ImageSlidderState createState() => _ImageSlidderState();
}

class _ImageSlidderState extends State<ImageSlidder> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: SizedBox(
          height: MediaQuery.of(context).size.height / 3.9,
          width: MediaQuery.of(context).size.width,

        child:CarouselSlider.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index, index1) {

            return Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: const DecorationImage(
                  image: AssetImage('assets/p.jpeg'),
                  fit: BoxFit.fitWidth,
                  alignment: Alignment.topCenter,

                ),
              ),


            );
          },
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 4),
            viewportFraction: 1,
            autoPlayCurve: Curves.fastOutSlowIn,
          ),
        )

      ),
    );
  }
}
