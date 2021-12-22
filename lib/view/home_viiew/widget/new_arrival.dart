import 'package:demo/view/common/single_product_card.dart';
import 'package:demo/view/newarrival/newarrival_seeall.dart';
import 'package:demo/view/product_details/product_details.dart';
import 'package:flutter/material.dart';

class New_Arrival extends StatelessWidget {
  const New_Arrival({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;

    return Container(
      height: width*.7,
      width: width,

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children:  [

               const Text('New Arrival',style: TextStyle(
                 fontSize: 20,

               ),
               ),


               GestureDetector(
                 onTap: ()
                 {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => NewArrivalSeeAll()),
                   );
                 },
                 child: const Text('See All',style: TextStyle(
                   fontSize: 16,

                 ),
                 ),
               ),
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

