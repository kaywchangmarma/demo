import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ImageSlidder extends StatefulWidget {
  final padding;
  final height;
  final alignment;
  final radius;
  final imageUrl;


  const ImageSlidder({Key? key,this.padding=10.0,this.height,this.alignment,this.radius=10.0,this.imageUrl}) : super(key: key);

  @override
  _ImageSlidderState createState() => _ImageSlidderState();
}

class _ImageSlidderState extends State<ImageSlidder> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(widget.padding),
      child: Container(
          height:widget.height?? MediaQuery.of(context).size.height / 3.9,
          width: MediaQuery.of(context).size.width,

        child:CarouselSlider.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index, index1) {

            return Container(
              height:widget.height?? MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(widget.radius),
                image:   DecorationImage(
                  image: AssetImage(widget.imageUrl),
                  fit: BoxFit.fill,
                  //alignment:widget.alignment?? Alignment.topCenter,

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
