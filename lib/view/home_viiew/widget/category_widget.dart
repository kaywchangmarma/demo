import 'package:demo/api_controller/api_url.dart';
import 'package:demo/api_controller/category_api.dart';
import 'package:demo/view/category/category_seeall.dart';
import 'package:demo/view/category/single_category.dart';
import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;

    return Container(
      // height: width*.5,
       width: width,
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(10),
       ),
       child: Padding(
         padding: const EdgeInsets.only(left:8.0,right: 8,top: 8),
         child: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children:  [

               const Text('Category',style: TextStyle(
                 fontSize: 20,

               ),
               ),
               GestureDetector(
                 onTap: ()
                 {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => CategorySeeAll()),
                   );
                 },
                 child: const Text(

                   'See All',style: TextStyle(
                   fontSize: 16,

                 ),
                 ),
               ),
             ],
           ),

             FutureBuilder(
               future: CategoryApi().fetch(),
               builder: (BuildContext context,AsyncSnapshot snapshot) {
                if(snapshot.data!=null)
                  {
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
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
                            child: Padding(
                              padding: const EdgeInsets.only(left:8.0,right: 8,top: 8),
                              child: SizedBox(
                                width: 100,
                                height: width*.32,

                                child: Column(
                                  children:  [

                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child:  Image(image: NetworkImage(
                                        '${ApiKeys.imageHead}/images/category/${snapshot.data[index]['image']}',
                                      ),),
                                    ),

                                     Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(snapshot.data[index]['name'],maxLines: 2,),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    );
                  }
                else
                  {
                    return const Center(child: CircularProgressIndicator());
                  }
               }
             )
           ],
         ),
       ),
    );
  }
}

