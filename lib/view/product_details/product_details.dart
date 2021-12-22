import 'package:demo/view/home_viiew/widget/image_slidder.dart';
import 'package:flutter/material.dart';
class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key}) : super(key: key);


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
    return Scaffold(
      appBar: AppBar(


      ),
      body: Stack(
        children: [

          ListView(
            children: [
              ImageSlidder(height: MediaQuery.of(context).size.width*.7,padding: 0.0,radius: 0.0,imageUrl: 'assets/p2.jpeg',),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Product Name'),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: const [
                          Icon(Icons.favorite, color: Colors.red,),
                          SizedBox(height: 5,),
                          Text('BDT 200'),
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
                    Text('Color',style: const TextStyle(fontSize: 18),),
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
                      children: const [
                        Text('Description',style: TextStyle(fontSize: 18),),
                        Text('Solar-powered headphones',style: TextStyle(fontSize: 13),),
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

              child: Center(child: Text('ADD TO CART',style: const TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)),
            ),
          )
        ],
      )
    );
  }
}
