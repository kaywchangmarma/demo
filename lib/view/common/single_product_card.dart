import 'package:demo/api_controller/api_url.dart';
import 'package:demo/view/product_details/product_details.dart';
import 'package:flutter/material.dart';



class SingleProduct extends StatelessWidget {

  String? name;
  String? image;
  String? price;
  String? specialPrice;


   SingleProduct({Key? key,this.name='',this.image='',this.price='00',this.specialPrice=''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String imageLink = '${ApiKeys.imageHead}images/product/$image'
        .replaceAll(' ', '%20')
        .replaceAll('(', '\(')
        .replaceAll(')', '\)')
        .split(',')[0];
    return GestureDetector(
      onTap: ()
      {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => ProductDetails(
            image: image,
            name: name,
            price: price,
            specialprice: specialPrice,
          )),
        );
      },
      child: Padding(
        padding:  EdgeInsets.all(8.0),
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
                child: Image(
                  height: 140,
                  image: NetworkImage(
                    imageLink,
                  ),
                  fit: BoxFit.fill,
                ),
              ),
               Padding(
                padding: EdgeInsets.all(5.0),
                child: Text('$name',maxLines: 1,),
              ),

              Padding(
                padding: EdgeInsets.all(5.0),
                child: Text("BDT $price"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
