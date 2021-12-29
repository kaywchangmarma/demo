import 'package:demo/view/login_screen/sign_up.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
   LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailController=TextEditingController();

  TextEditingController _passwordController=TextEditingController();

  @override
  Widget build(BuildContext context) {

    double height=MediaQuery.of(context).size.height;
    double width=MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(

        title: Text('Login'),
        backgroundColor: Colors.yellow.shade900,

      ),


      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            SizedBox(height: 50,),
            //Text('LOGIN',style: TextStyle(fontSize: 30),),
            const Padding(
              padding: EdgeInsets.all(8),
              child: Image(
                  height: 150,
                  width: 150,
                  image: AssetImage(
                    'assets/logo_1.png',
        ),),
            ),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Email',
                style: TextStyle(
                  color: Colors.yellow.shade900,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'OpenSans',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6.0,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: TextField(
                  controller: _emailController,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    color: Colors.yellow.shade900,
                    fontFamily: 'OpenSans',
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Colors.yellow.shade900,
                    ),
                    hintText: 'Enter your Email',
                    hintStyle: TextStyle(
                      color: Colors.yellow.shade900,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Password',
                style: TextStyle(
                  color: Colors.yellow.shade900,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'OpenSans',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: 60,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 6.0,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: TextField(
                  controller: _passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  style: TextStyle(
                    color: Colors.yellow.shade900,
                    fontFamily: 'OpenSans',
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.only(top: 14),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.yellow.shade900,
                    ),
                    hintText: 'Enter your Password',
                    hintStyle: TextStyle(
                      color: Colors.yellow.shade900,
                      fontFamily: 'OpenSans',
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width,
                color: Colors.yellow.shade900,
                child: Center(child: Text('Login',style: TextStyle(color: Colors.white),)),
              ),
            ),


            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Container(
                  child: Row(
                    children: [
                      Text(
                        "Do You Have an Account?",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,
                        ),
                      ),

                      GestureDetector(
                        onTap: ()
                        {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignUp()),
                          );
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            fontSize: 15,
                            color: Colors.yellow.shade900,
                          ),
                        ),
                      ),
                    ],
                  )
                ),
              ),
            ),

          ],

        ),
      ),
    );
  }
}
