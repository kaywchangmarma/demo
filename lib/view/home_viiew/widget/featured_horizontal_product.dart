import 'package:demo/view/common/single_product_card.dart';
import 'package:flutter/material.dart';

class ProductHorizontalList extends StatefulWidget {
  final List list;

  ProductHorizontalList({ required this.list});

  @override
  _ProductHorizontalListState createState() =>
      _ProductHorizontalListState(productList: this.list);
}

class _ProductHorizontalListState extends State<ProductHorizontalList> {
  List? productList;

  _ProductHorizontalListState({this.productList});

  //Featured products->products under tabbar design
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: MediaQuery.of(context).size.width,
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: List<Widget>.generate(productList!.length, (index) {
            return SingleProduct(
              name: productList![index]['name'],
              image: productList![index]['image'],
              price: productList![index]['price'],
              specialPrice: productList![index]['promotion_price'],
            );
          })),
    );
  }
}