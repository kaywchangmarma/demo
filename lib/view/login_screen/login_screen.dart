import 'package:demo/api_controller/login_api.dart';
import 'package:demo/view/home_viiew/home_view.dart';
import 'package:demo/view/login_screen/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class LoginScreen extends StatefulWidget {
   LoginScreen({Key? key}) : super(key: key);
   static const String routeName = '/login';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late SharedPreferences preferences;
  bool Loading = false;
  TextEditingController _emailController=TextEditingController();
  TextEditingController _passwordController=TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    sharedPref();
    super.initState();
  }

  void sharedPref() async {
    preferences = await SharedPreferences.getInstance();
  }

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

            GestureDetector(

              onTap: (){
                if(_formKey.currentState!.validate()){

                  LoginApi().fetch(_emailController.text, _passwordController.text).then((response){
                    if(response=true){
                      print('Succeed');
                    }else{
                      print('failed');
                    }

                  });

                }
              },

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.yellow.shade900,
                  child: Center(
                      child: Text('Login',style: TextStyle(color: Colors.white),)),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                alignment: Alignment.centerRight,
                child: Column(
                  children: [
                    Text(
                        'Forgot Password?',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.yellow.shade900,
                      ),
                    ),
                  ],
                ),
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
