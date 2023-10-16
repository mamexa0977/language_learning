import 'package:flutter/material.dart';

import 'package:dio/dio.dart';
import 'package:language_learning/auth/register.dart';
import 'package:language_learning/home.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

TextEditingController emailcontroller = TextEditingController();

TextEditingController passwordcontroller = TextEditingController();

class _LoginPageState extends State<LoginPage> {
  Future<void> signIn(String email, String password) async {
  try {
    Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
    final dio = Dio();
    final response = await dio.post(
      'http://192.168.228.133:3000/login',
      data: {"email": email, "password": password},
    );
    print(response.statusCode);
    print(response.data);

    if (response.statusCode == 200) {
      print('User loggin successfully');
      Navigator.push(context, MaterialPageRoute(builder: (context)=> HomePage()));
    } else {
      print('Loggin failed');
      print(response.statusCode);
    }
  } catch (error) {
    print('Error during signup: $error');
  }
}

   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2a2e37),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 120),
                child: Text("Welcome Back!", style: TextStyle(color: Color(0xffb7b546), fontSize: 22,fontWeight: FontWeight.bold),)),
                SizedBox(height: 50,),
              Container(
                padding: EdgeInsets.all(0),
                margin: EdgeInsets.only(left: 23),
               height: 550,
               width: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color(0xff394145)
                )
                ,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(color: Color.fromARGB(137, 82, 88, 106),
                      borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40))
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 0),
                      child: Center(child: Text('login',style: TextStyle(color: Colors.white,fontSize: 20),)),
                    ),
                    SizedBox(height: 100,),
                   
                    
                       Container(
                        padding: EdgeInsets.all(10),
                        child: TextField(
                            style: TextStyle(
    color: Colors.white, // Change this color to the desired text color
  ),
  cursorColor: Color(0xffb7b546), 
                          controller: emailcontroller,
                          decoration: InputDecoration(
                          focusColor:Color(0xffb7b546),
                          
                     
                          focusedBorder:  UnderlineInputBorder(borderSide: BorderSide(color: Color(0xffb7b546))),
                          hintText: "Example@gmail.com",
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xffccd1d5),)),
                          hintStyle: TextStyle(color:  Color(0xffccd1d5)),
                          labelStyle: TextStyle(color:  Color(0xffccd1d5)),
                          
                          prefixIcon:Icon( Icons.person,color:  Color(0xffccd1d5),),
                          
                          
                          
                        ),
                        
                      
                        ),
                      
                       ),
                     SizedBox(height: 20,),
                          Container(
                        padding: EdgeInsets.all(10),
                        child: TextField(
                           style: TextStyle(
    color: Colors.white, // Change this color to the desired text color
  ),
  cursorColor: Color(0xffb7b546), 
                          controller: passwordcontroller,
                          decoration: InputDecoration(
                          focusColor:Color(0xffb7b546),
                          
                     
                          focusedBorder:  UnderlineInputBorder(borderSide: BorderSide(color: Color(0xffb7b546))),
                          hintText: "password",
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xffccd1d5),)),
                          hintStyle: TextStyle(color:  Color(0xffccd1d5)),
                          prefixIcon:Icon( Icons.key,color:  Color(0xffccd1d5),),
                          
                          
                          
                        ),
                        
                      
                        ),
                      
                       ),
                       SizedBox(height:40,),

                       Container(child: Center(
                        child: Text("Forget Password",style: TextStyle(color: Color(0xffccd1d5),),),
                       ),),SizedBox(height: 27,),
                        InkWell(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> RegisterPage()));
                          },
                          child: Container(child: Center(
                          child: Text("Don't have an account",style: TextStyle(color: Color(0xffccd1d5),),),
                                               ),),
                        ),
                       SizedBox(height: 70,),
                       InkWell(
                        onTap: (){ 
                          signIn(emailcontroller.text, passwordcontroller.text);
                          },
                         child: Container(
                          margin: EdgeInsets.only(left: 25),
                          width: 300,
                          height: 43,
                          decoration: BoxDecoration(
                       
                            color: Color(0xffb7b546),
                            borderRadius: BorderRadius.circular(50)
                          ),
                          child: Center(child: Text("Login"),),
                         ),
                       )
                     

                  ],
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}