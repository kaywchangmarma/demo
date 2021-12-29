import 'package:flutter/material.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  TextEditingController _nameController=TextEditingController();
  TextEditingController _phoneController=TextEditingController();
  TextEditingController _emailController=TextEditingController();
  TextEditingController _passwordController=TextEditingController();
  TextEditingController _confirmpassController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
        backgroundColor: Colors.yellow.shade900,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name',
                  style: TextStyle(
                    color: Colors.black,
                  ),),
                  SizedBox(height: 10,),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        offset: Offset(0,2),

                      ),],
                    ),
                    child: TextField(
                      controller: _nameController,
                      keyboardType: TextInputType.name,
                      style: TextStyle(
                        color: Colors.yellow.shade900,
                        fontFamily: 'OpenSans'
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14),
                        prefixIcon: Icon(
                          Icons.people,
                          color: Colors.yellow.shade900,
                        ),
                        hintText: 'Enter Your Name',
                        hintStyle: TextStyle(
                          color: Colors.yellow.shade900,
                          fontFamily: 'OpenSans'
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
                  Text('Phone',
                    style: TextStyle(
                      color: Colors.black,
                    ),),
                  SizedBox(height: 10,),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        offset: Offset(0,2),

                      ),],
                    ),
                    child: TextField(
                      controller: _phoneController,
                      keyboardType: TextInputType.phone,
                      style: TextStyle(
                          color: Colors.yellow.shade900,
                          fontFamily: 'OpenSans'
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14),
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Colors.yellow.shade900,
                        ),
                        hintText: 'Enter Your Phone Number',
                        hintStyle: TextStyle(
                            color: Colors.yellow.shade900,
                            fontFamily: 'OpenSans'
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
                  Text('Email',
                    style: TextStyle(
                      color: Colors.black,
                    ),),
                  SizedBox(height: 10,),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        offset: Offset(0,2),

                      ),],
                    ),
                    child: TextField(
                      controller: _emailController,
                      keyboardType: TextInputType.visiblePassword,
                      style: TextStyle(
                          color: Colors.yellow.shade900,
                          fontFamily: 'OpenSans'
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14),
                        prefixIcon: Icon(
                          Icons.email,
                          color: Colors.yellow.shade900,
                        ),
                        hintText: 'Enter Your Email',
                        hintStyle: TextStyle(
                            color: Colors.yellow.shade900,
                            fontFamily: 'OpenSans'
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
                  Text('Password',
                    style: TextStyle(
                      color: Colors.black,
                    ),),
                  SizedBox(height: 10,),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        offset: Offset(0,2),

                      ),],
                    ),
                    child: TextField(
                      controller: _passwordController,
                      keyboardType: TextInputType.visiblePassword,
                      style: TextStyle(
                          color: Colors.yellow.shade900,
                          fontFamily: 'OpenSans'
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.yellow.shade900,
                        ),
                        hintText: 'Enter Password',
                        hintStyle: TextStyle(
                            color: Colors.yellow.shade900,
                            fontFamily: 'OpenSans'
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
                  Text('Confirm Password',
                    style: TextStyle(
                      color: Colors.black,
                    ),),
                  SizedBox(height: 10,),
                  Container(
                    alignment: Alignment.centerLeft,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [BoxShadow(
                        color: Colors.black12,
                        blurRadius: 6,
                        offset: Offset(0,2),

                      ),],
                    ),
                    child: TextField(
                      controller: _confirmpassController,
                      keyboardType: TextInputType.visiblePassword,
                      style: TextStyle(
                          color: Colors.yellow.shade900,
                          fontFamily: 'OpenSans'
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.yellow.shade900,
                        ),
                        hintText: 'Confirm Password',
                        hintStyle: TextStyle(
                            color: Colors.yellow.shade900,
                            fontFamily: 'OpenSans'
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
                child: Center(
                    child: Text('SignUp',style: TextStyle(color: Colors.white),)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
