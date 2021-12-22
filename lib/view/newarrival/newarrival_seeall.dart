import 'package:demo/view/common/single_product_card.dart';
import 'package:demo/view/product_details/product_details.dart';
import 'package:flutter/material.dart';

class NewArrivalSeeAll extends StatelessWidget {
  const NewArrivalSeeAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('New Arrival',style: TextStyle(
          color: Colors.black,
        ),),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),

      body: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(10),
          crossAxisSpacing: 4,
          mainAxisSpacing: 4,
          crossAxisCount: 2,
          childAspectRatio: 0.81,
          children: List.generate(10, (index){
            return SingleProduct();
          })
      ),
    );
  }
}
