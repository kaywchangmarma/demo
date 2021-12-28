import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductImageSlider extends StatefulWidget {
  final padding;
  final height;
  final alignment;
  final radius;
  final imageUrl;


  const ProductImageSlider({Key? key,this.padding=10.0,this.height,this.alignment,this.radius=10.0,this.imageUrl}) : super(key: key);

  @override
  _ProductImageSliderState createState() => _ProductImageSliderState();
}

class _ProductImageSliderState extends State<ProductImageSlider> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(widget.padding),
      child: Container(
          height:widget.height?? MediaQuery.of(context).size.height / 3.9,
          width: MediaQuery.of(context).size.width,

        child:CarouselSlider.builder(
          itemCount: widget.imageUrl.length,
          itemBuilder: (BuildContext context, int index, index1) {

            return Container(
              height:widget.height?? MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(widget.radius),
                image:   DecorationImage(
                  image: NetworkImage(widget.imageUrl[index]),
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
