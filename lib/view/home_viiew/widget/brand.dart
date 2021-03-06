import 'package:demo/view/brand/brand_seeall.dart';
import 'package:flutter/material.dart';
class Brand extends StatelessWidget {
  const Brand({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;

    return Container(
      height: width*.35,
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
              const Text('Brand',style: TextStyle(
                fontSize: 20,

              ),),


              GestureDetector(
                onTap: ()
                {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BrandSeeAll()),
                  );
                },
                child: const Text(
                  'See All',style: TextStyle(
                  fontSize: 16,

                ),),
              ),
            ],
          ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(5, (index){
                  return Padding(
                    padding: const EdgeInsets.only(left:8.0,right: 8,top: 8),
                    child: Container(
                      width: 100,

                      child: Column(
                        children:  [

                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: const Image(image: AssetImage(
                              'assets/p.jpeg',
                            ),),
                          ),

                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text("Title"),
                          )
                        ],
                      ),
                    ),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }

}
