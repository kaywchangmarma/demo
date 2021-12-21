import 'package:flutter/material.dart';
class CategorySeeAll extends StatelessWidget {
  const CategorySeeAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('Category',style: TextStyle(
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
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        crossAxisCount: 3,
        children: List.generate(10, (index){
          return Container(
            width: 80,

            child: Column(
              children:  [

                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child:  const Image(

                  height: 80,
                    image: AssetImage(
                    'assets/p.jpeg',

                  ),
                  fit: BoxFit.fill,
                  ),
                ),

                const Padding(
                  padding: EdgeInsets.all(5.0),
                  child: Text("Title"),
                )
              ],
            ),
          );
        })
      ),

    );
  }
}
