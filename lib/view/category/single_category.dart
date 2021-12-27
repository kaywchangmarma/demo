import 'package:demo/api_controller/api_url.dart';
import 'package:demo/api_controller/subcat_api.dart';
import 'package:demo/view/common/single_product_card.dart';
import 'package:flutter/material.dart';
class SingleCategory extends StatefulWidget {

  String? id,name,image;

   SingleCategory({Key? key,this.id,this.name,this.image}) : super(key: key);

  @override
  State<SingleCategory> createState() => _SingleCategoryState();
}

class _SingleCategoryState extends State<SingleCategory> {
  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
      //  backgroundColor: Colors.white,
        title:  Text(widget.name!, style: TextStyle(
          color: Colors.black
        ),),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        primary: true,
        child: Column(
          children: [
            Container(
              height: 150,
              width: width,
              color: Colors.red,
              child:  Image(image: NetworkImage(
                '${ApiKeys.imageHead}/images/category/${widget.image}',
              ),
              fit: BoxFit.fill,
              ),
            ),

            FutureBuilder(
              future: SubCatApi().fetch(widget.id!),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if(snapshot.data!=null){
                  return GridView.count(
                      primary: false,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.all(10),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      childAspectRatio: 0.81,
                      children: List.generate(10, (index){
                        return SingleProduct(
                          name: snapshot.data[index]['name'],
                          image: snapshot.data[index]['image'],
                          price: snapshot.data[index]['price'],
                          // specialPrice: snapshot.data[index]['promotion_price'],

                        );
                      })
                  );
                }
                else{
                  return Container(
                      height: height/1.5,
                      child: const Center(child: CircularProgressIndicator()));
                }
              }
            )
          ],
        ),
      ),

    );
  }
}
