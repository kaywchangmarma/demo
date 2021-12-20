import 'package:flutter/material.dart';

class New_Arrival extends StatelessWidget {
  const New_Arrival({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;

    return Container(
      height: width*.7,
      width: width,

      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: const [

               Text('New Arrival',style: TextStyle(
                 fontSize: 20,

               ),
               ),
               Text('See All',style: TextStyle(
                 fontSize: 16,

               ),
               ),
             ],
           ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(5, (index){
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
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

