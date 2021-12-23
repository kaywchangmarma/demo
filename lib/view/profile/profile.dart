import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile',style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
        elevation: 0,
      ),

      body: Container(
        height: height,

        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 30,),
              Center(

                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 5,
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),

                    const Text('Kawychang Marma',style: TextStyle(fontSize: 18),),
                    const Text('Email'),
                  ],
                )
              ),


              buildCard(context, 'Profile', CupertinoIcons.person,(){}),
              buildCard(context, 'Notification', Icons.notifications,(){}),
              buildCard(context, 'Address', Icons.add_location,(){}),
              buildCard(context, 'My Order', Icons.list,(){}),
              buildCard(context, 'Logout', Icons.logout,(){}),

            ],
          ),
        ),
      ),
      
    );
  }



  buildCard(BuildContext context,String? title,IconData? icon,VoidCallback onpressed)
  {
    double width=MediaQuery.of(context).size.width;
    return  GestureDetector(
      onTap: onpressed,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Card(

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          elevation: 5,
          child: Container(
            height: 60,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),

            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                  Row(

                    children:  [
                      Icon(icon!,size: 30,),
                      SizedBox(width: 10,),
                      Text(title!,style: TextStyle(fontSize:20 ),),
                    ],
                  ),
                  const Icon(Icons.arrow_forward_ios),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }



}
