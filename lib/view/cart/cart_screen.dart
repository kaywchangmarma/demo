import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {


  int quantity=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Cart',style: TextStyle(
          color: Colors.black,
        ),),
        elevation: 0,

      ),

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: List.generate(10, (index){
           if(index<9)
             {
               return Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Card(
                   elevation: 3,
                   child: Container(
                     height: 100,
                     width: MediaQuery.of(context).size.width,
                     //color: Colors.red,
                     child: Row(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: ClipRRect(
                             borderRadius: BorderRadius.circular(10),
                             child: const Image(
                               height: 140,
                               width: 120,
                               image: AssetImage(
                                 'assets/p.jpeg',
                               ),
                               fit: BoxFit.fill,
                             ),
                           ),
                         ),

                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,

                           children: [

                             const Text('Product Name',
                               style: TextStyle(fontSize: 18),
                               maxLines: 2,),
                             const Text('Price',   style: TextStyle(fontSize: 18),),

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

                       ],

                     ),
                   ),
                 ),
               );
             }
           else
             {
               return Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Container(
                   height: 155,
                   width: MediaQuery.of(context).size.width,
                  // color: Colors.blue,
                   child: Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.center,
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: const [
                            Text('Sub Total',style: TextStyle(fontSize: 20),),
                             Text('BDT 200',style: TextStyle(fontSize: 20),)
                           ],
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: const [
                             Text('Shipping Cost',style: TextStyle(fontSize: 20),),
                             Text('BDT 20',style: TextStyle(fontSize: 20),)
                           ],
                         ),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: const [
                             Text('Total',style: TextStyle(fontSize: 20),),
                             Text('BDT 220',style: TextStyle(fontSize: 20),)
                           ],
                         ),

                      Card(
                        elevation: 3,
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          child: const Center(
                            child: Text('CHECKOUT',style: TextStyle(
                              fontSize: 20
                            ),),
                          ),
                        ),
                      )
                       ],
                     ),
                   ),
                 ),
               );
             }
          })

        ),
      ),
    );
  }
}
