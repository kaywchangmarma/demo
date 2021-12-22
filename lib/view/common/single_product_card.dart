import 'package:demo/view/product_details/product_details.dart';
import 'package:flutter/material.dart';



class SingleProduct extends StatelessWidget {
  const SingleProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()
      {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProductDetails()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 200,
          width: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),



          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: const Image(
                  height: 140,
                  image: AssetImage(
                    'assets/p.jpeg',
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("ABC"),
              ),

              const Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("BDT 300"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
