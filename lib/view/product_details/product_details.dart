import 'package:demo/api_controller/api_url.dart';
import 'package:demo/view/home_viiew/widget/image_slidder.dart';
import 'package:demo/view/product_details/image_slidder_product.dart';
import 'package:flutter/material.dart';
class ProductDetails extends StatefulWidget {
  String? name;
  String? image;
  String? price;
  String? specialprice;
  String? description;

  ProductDetails({Key? key,this.name='',this.image='',this.price='',this.specialprice='',this.description=''}) : super(key: key);


  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {

  final List<Color> _colors=[
    Colors.blue,Colors.green,Colors.purple,Colors.pink,Colors.orange
  ];
  final List<String> _sizes=[
    'S','M','L','XL'
  ];
  int quantity=0;


  @override
  Widget build(BuildContext context) {



    List<String> imageList = [];
    imageList = widget.image!.split(',');
    List<String> images = [];
    for (var item in imageList) {
      images.add('${ApiKeys.imageHead}images/product/$item'
          .replaceAll(' ', '%20')
          .replaceAll('(', '\(')
          .replaceAll(')', '\)'));
    }
    return Scaffold(
      appBar: AppBar(


      ),
      body: Stack(
        children: [

          ListView(
            children: [
              ProductImageSlider(
                imageUrl: images,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // const Text('Product Name'),
                    Expanded(
                      child: Text(
                       widget.name!,
                        style: TextStyle(fontSize: 15, color: Colors.black,fontWeight: FontWeight.bold,),
                        maxLines: 2,
                      ),
                    ),


                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children:  [
                          const Icon(Icons.favorite, color: Colors.red,),
                          const SizedBox(height: 5,),
                          Text('BDT ${widget.price!}',style: const TextStyle(fontSize: 15),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Color',style: TextStyle(fontSize: 18)),
                    Row(
                      children: List.generate(_colors.length, (index){
                        return Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration:  BoxDecoration(
                                shape: BoxShape.circle,
                                color: _colors[index]
                            ),
                          ),
                        );
                      }),
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Size',style: TextStyle(fontSize: 18),),
                    Row(
                      children: List.generate(_sizes.length, (index){
                        return Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration:   BoxDecoration(
                                shape: BoxShape.rectangle,
                                color: Colors.blue.withOpacity(0.1)
                            ),
                            child: Center(child: Text(_sizes[index])),
                          ),
                        );
                      }),
                    ),

                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Quantity',style: TextStyle(fontSize: 18),),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:  [
                        IconButton(onPressed: (){
                          setState(() {
                            quantity--;
                          });
                        },
                            icon: const Icon(Icons.remove_circle)),

                        Text('$quantity'),
                        IconButton(onPressed: (){
                          setState(() {
                            quantity++;
                          });
                        },
                            icon: const Icon(Icons.add_circle)),
                      ],
                    ),

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Description',style: TextStyle(fontSize: 18),),

                        Text(
                          '${widget.description!}',style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),


                  ],
                ),
              ),

              const SizedBox(height: 70,)


            ],

          ),

          Positioned(
            bottom: 10,
            left: 50,
            right: 50,
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(30),
              ),

              child: const Center(child: Text('ADD TO CART',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)),
            ),
          )
        ],
      )
    );
  }
}
