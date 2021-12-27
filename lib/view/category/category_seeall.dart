import 'package:demo/api_controller/api_url.dart';
import 'package:demo/api_controller/category_api.dart';
import 'package:demo/view/category/single_category.dart';
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

      body: FutureBuilder(
        future: CategoryApi().fetch(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if(snapshot.data!=null){
            return GridView.count(
                primary: false,
                padding: const EdgeInsets.all(8),
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                crossAxisCount: 3,
                children: List.generate(snapshot.data.length, (index){
                  return GestureDetector(
                    onTap: ()
                    {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SingleCategory(
                          id: snapshot.data[index]['id'].toString(),
                          name: snapshot.data[index]['name'],
                          image: snapshot.data[index]['image'],
                        )),
                      );
                    },
                    child: SizedBox(
                      width: 80,

                      child: Column(
                        children:  [

                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child:  Image(image: NetworkImage(
                              '${ApiKeys.imageHead}/images/category/${snapshot.data[index]['image']}',
                            ),),
                          ),

                           Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text(snapshot.data[index]['name'],maxLines: 2,),
                          )
                        ],
                      ),
                    ),
                  );
                })
            );
          }
          else{
            return const Center(child: CircularProgressIndicator());
          }
        }
      ),

    );
  }
}
