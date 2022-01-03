import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo/api_controller/api_url.dart';
import 'package:demo/api_controller/slider_api.dart';
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
      padding:  const EdgeInsets.all(10.0),
      child: SizedBox(
        height:MediaQuery.of(context).size.height / 3.9,
        width: MediaQuery.of(context).size.width,
        child: FutureBuilder(
          future: SliderApi().fetch(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if(snapshot.data==null)
              {
                return const Center(child: CircularProgressIndicator());

              }
            else{
              return CarouselSlider.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index, index1) {

                  return Container(
                    height:MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image:    DecorationImage(
                        image: NetworkImage(ApiKeys.imageHead+'/images/slider/'+snapshot.data[index]['image']),
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
              );

            }
          }
        ),
      ),
    );
  }
}
