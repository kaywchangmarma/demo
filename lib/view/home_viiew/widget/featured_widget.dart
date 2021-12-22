import 'package:demo/view/common/single_product_card.dart';
import 'package:demo/view/product_details/product_details.dart';
import 'package:flutter/material.dart';

class FeaturedWidget extends StatelessWidget {
  const FeaturedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;

    return Container(
      height: width*.67,
      width: width,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0,right: 8,top: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [

              Text('Featured',style: TextStyle(
                fontSize: 20,

              ),),

            ],
          ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(5, (index){
                  return SingleProduct();
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
