import 'package:demo/api_controller/api_url.dart';
import 'package:demo/api_controller/featured_api.dart';
import 'package:demo/view/common/single_product_card.dart';
import 'package:demo/view/home_viiew/widget/featured_horizontal_product.dart';
import 'package:demo/view/product_details/product_details.dart';
import 'package:flutter/material.dart';

class FeaturedWidget extends StatelessWidget {
  const FeaturedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;

    return Container(
      height: width*.8,
      width: width,
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0,right: 8,top: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [

              Text('Featured',style: TextStyle(
                fontSize: 20,

              ),),

            ],
          ),

            FutureBuilder(
              future: FeaturedApi().fetch(),
              builder: (BuildContext context,AsyncSnapshot snapshot) {
                if(snapshot.data!=null) {
                  return DefaultTabController(
                    length: snapshot.data.length,
                    child: Container(
                      height: MediaQuery.of(context).size.height * .4,
                      child: Scaffold(
                        appBar: PreferredSize(
                          preferredSize: Size(50, 50),
                          child: AppBar(
                            backgroundColor: Colors.yellow.shade900,
                            elevation: 0,
                            bottom: TabBar(
                                isScrollable: true,
                                indicatorColor: Colors.white,
                                tabs: List<Widget>.generate(snapshot.data.length, (index) {
                                  return Tab(
                                    text: snapshot.data[index]['categoryName'],
                                  );
                                })),
                          ),
                        ),
                        body: Container(
                          child: TabBarView(
                              children: List<Widget>.generate(snapshot.data.length, (index) {
                                return ProductHorizontalList(
                                  list: snapshot.data[index]['Products'],
                                );
                              })),
                        ),
                      ),
                    ),
                  );
                } else
                  {
                    return const Center(child: CircularProgressIndicator());
                  }
              }
            ),

    //         FutureBuilder(
    //           future: FeaturedApi().fetch(),
    //           builder: (BuildContext context, AsyncSnapshot snapshot) {
    //             if(snapshot.data==null){
    //               return SingleChildScrollView(
    //                 scrollDirection: Axis.horizontal,
    //                 child: Row(
    //                   children: List.generate(5, (index){
    //                     return const SingleProduct();
    //                   }),
    //                 ),
    //               );
    //             }
    //
    // }
    //         )
          ],
        ),
      ),
    );
  }
}
