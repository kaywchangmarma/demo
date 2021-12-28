import 'package:demo/view/common/single_product_card.dart';
import 'package:flutter/material.dart';

class WishList extends StatelessWidget {

  // String? name;
  // String? image;
  // String? price;

  const WishList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Wishlist',style: TextStyle(
          color: Colors.black,
        ),),
        elevation: 0,

      ),

      body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
          crossAxisCount: 2,
          childAspectRatio: 0.81,
          children: List.generate(10, (index){
            return SingleProduct(

            );
          })
      ),
    );
  }
}
