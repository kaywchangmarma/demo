import 'package:flutter/material.dart';

class WishList extends StatelessWidget {
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
            return Padding(
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
            );
          })
      ),
    );
  }
}
