// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:language_learning/auth/login.dart';

// class RegisterPage extends StatefulWidget {
//   const RegisterPage({super.key});

//   @override
//   State<RegisterPage> createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {
//   TextEditingController emailcontroller = TextEditingController();

// TextEditingController passwordcontroller = TextEditingController();
// TextEditingController namecontroller = TextEditingController();

// TextEditingController language = TextEditingController();
//   Future<void> signUp() async {
//   try {
//     final dio = Dio();
//     final response = await dio.post(
//       'http://192.168.228.133:3000/signup',
//       data: {'email': emailcontroller.text, 'password': passwordcontroller.text, 'language': namecontroller.text},
//     );
//     print(response.statusCode);

//     if (response.statusCode == 201) {
//       print('User loggin successfully');
//       Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
//     } else {
//       print(response.statusCode);
//       print('Loggin failed');
//     }
//   } catch (error) {
//     print('Error during signup: $error');
//   }
// }

   
   
//   @override
//   Widget build(BuildContext context) {
    
//     return Scaffold(
//       backgroundColor: Color(0xFF2a2e37),
//       body: SingleChildScrollView(
//         child: SafeArea(
//           child: Column(
//             children: [
//               Container(
//                 margin: EdgeInsets.only(top: 70),
//                 child: Text("Create Account", style: TextStyle(color: Color(0xffb7b546), fontSize: 22,fontWeight: FontWeight.bold),)),
//                 SizedBox(height: 50,),
//               Container(
//                 padding: EdgeInsets.all(0),
//                 margin: EdgeInsets.only(left: 23),
//                height: 600,
//                width: 360,
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(40),
//                   color: Color(0xff394145)
//                 )
//                 ,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                     Container(
//                       width: double.infinity,
//                       height: 50,
//                       decoration: BoxDecoration(color: Color.fromARGB(137, 82, 88, 106),
//                       borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40))
//                       ),
//                       margin: EdgeInsets.symmetric(horizontal: 0),
//                       child: Center(child: Text('Register',style: TextStyle(color: Colors.white,fontSize: 20),)),
//                     ),
//                     SizedBox(height: 80,),
                   
                    
//                        Container(
//                         padding: EdgeInsets.all(10),
//                         child: TextField(
//                           controller: namecontroller,
//                           decoration: InputDecoration(
//                           focusColor:Color(0xffb7b546),
                          
                     
//                           focusedBorder:  UnderlineInputBorder(borderSide: BorderSide(color: Color(0xffb7b546))),
//                           hintText: "Full Name",
//                           enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xffccd1d5),)),
//                           hintStyle: TextStyle(color:  Color(0xffccd1d5)),
//                           prefixIcon:Icon( Icons.person,color:  Color(0xffccd1d5),),
                          
                          
                          
//                         ),
                        
                      
//                         ),
                      
//                        ),
//                      SizedBox(height: 20,),
                  
              
//                          Container(
//                         padding: EdgeInsets.all(10),
//                         child: TextField(
//                           controller: emailcontroller,
//                           decoration: InputDecoration(
//                           focusColor:Color(0xffb7b546),
                          
                     
//                           focusedBorder:  UnderlineInputBorder(borderSide: BorderSide(color: Color(0xffb7b546))),
//                           hintText: "Example@gmail.com",
//                           enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xffccd1d5),)),
//                           hintStyle: TextStyle(color:  Color(0xffccd1d5)),
//                           prefixIcon:Icon( Icons.person,color:  Color(0xffccd1d5),),
                          
                          
                          
//                         ),
                        
                      
//                         ),
                      
//                        ),
                   
//                        SizedBox(height: 10,),
//                          Container(
                          
//                         padding: EdgeInsets.all(10),
//                         child: TextField(
//                           controller: passwordcontroller,
//                           decoration: InputDecoration(
//                           focusColor:Color(0xffb7b546),
                          
                     
//                           focusedBorder:  UnderlineInputBorder(borderSide: BorderSide(color: Color(0xffb7b546))),
//                           hintText: "password",
//                           enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xffccd1d5),)),
//                           hintStyle: TextStyle(color:  Color(0xffccd1d5)),
//                           prefixIcon:Icon( Icons.person,color:  Color(0xffccd1d5),),
                          
                          
                          
//                         ),
                        
                      
//                         ),
                      
//                        ),
//                        SizedBox(height: 25,),
//                           Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               controller: language,
//               readOnly: true,
//               decoration: InputDecoration(
//                 hintText: 'Select language ',
//                 suffixIcon: IconButton(
//   icon: Icon(Icons.arrow_drop_down),
//   onPressed: () {
//     showDialog(
//       context: context,
//       builder: (context) => AlertDialog(
//         title: Text('Select Language'),
//         content: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
           
//             SizedBox(height: 16),
//             Expanded(
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     Text("English"),
//                     Text("chinees"),
//                     Text("oromo"),

//                   ]
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   },
// ),

//               ),
//             ),
//           ],
//         ),
//       ),
    
                   
//                       SizedBox(height: 50,),
//                        InkWell(
//                         onTap: () {
//                           signUp();
//                         },
//                          child: Container(
//                           margin: EdgeInsets.only(left: 25),
//                           width: 300,
//                           height: 43,
//                           decoration: BoxDecoration(
                       
//                             color: Color(0xffb7b546),
//                             borderRadius: BorderRadius.circular(50)
//                           ),
//                           child: Center(child: Text("Register"),),
//                          ),
//                        ),SizedBox(height: 20,),  
                      
                     

//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       )
//     );
//   }
// }

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:language_learning/auth/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController languageController = TextEditingController(); // Added this line

  String selectedLanguage = '';
  Color selectedLanguageTextColor = Colors.white;
   Future<void> signUp() async {
    try {
      final dio = Dio();
      final response = await dio.post(
        'http://192.168.228.133:3000/signup',
        data: {
          'name': nameController.text,
          'email': emailController.text,
          'password': passwordController.text,
          'language': selectedLanguage,
        },
      );
      print(response.statusCode);

      if (response.statusCode == 201) {
        print('User registered successfully');
        // Save user's input locally
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('name', nameController.text);
        prefs.setString('email', emailController.text);
        prefs.setString('language', selectedLanguage);

        Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
      } else {
        print(response.statusCode);
        print('Registration failed');
      }
    } catch (error) {
      print('Error during registration: $error');
    }
  }
 
 
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2a2e37),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 70),
                child: Text(
                  "Create Account",
                  style: TextStyle(color: Color(0xffb7b546), fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 50),
              Container(
                padding: EdgeInsets.all(0),
                margin: EdgeInsets.only(left: 23),
                height: 600,
                width: 360,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Color(0xff394145),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(137, 82, 88, 106),
                        borderRadius: BorderRadius.only(topRight: Radius.circular(40), topLeft: Radius.circular(40)),
                      ),
                      margin: EdgeInsets.symmetric(horizontal: 0),
                      child: Center(child: Text('Register', style: TextStyle(color: Colors.white, fontSize: 20))),
                    ),
                    SizedBox(height: 80),

                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: nameController,
                        decoration: InputDecoration(
                          focusColor: Color(0xffb7b546),

                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xffb7b546))),
                          hintText: "Full Name",
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xffccd1d5))),
                          hintStyle: TextStyle(color: Color(0xffccd1d5)),
                          prefixIcon: Icon(Icons.person, color: Color(0xffccd1d5)),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),

                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: emailController,
                        decoration: InputDecoration(
                          focusColor: Color(0xffb7b546),

                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xffb7b546))),
                          hintText: "Example@gmail.com",
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xffccd1d5))),
                          hintStyle: TextStyle(color: Color(0xffccd1d5)),
                          prefixIcon: Icon(Icons.email, color: Color(0xffccd1d5)),
                        ),
                      ),
                    ),

                    SizedBox(height: 10),

                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        controller: passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          focusColor: Color(0xffb7b546),

                          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xffb7b546))),
                          hintText: "Password",
                          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Color(0xffccd1d5))),
                          hintStyle: TextStyle(color: Color(0xffccd1d5)),
                          prefixIcon: Icon(Icons.lock, color: Color(0xffccd1d5)),
                        ),
                      ),
                    ),
                    SizedBox(height: 25),

                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextField(
                            style: TextStyle(color: selectedLanguageTextColor),
                            controller: languageController,
                            readOnly: true,
                            decoration: InputDecoration(
                              hintText: 'Select Language',
                              hintStyle: TextStyle(color: Colors.white),
                              labelStyle:  TextStyle(color: Colors.white),
                              suffixIcon: IconButton(
                                icon: Icon(Icons.arrow_drop_down),
                                onPressed: () {
                                  showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                      title: Text('Select Language'),
                                      content: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          ListTile(
                                            title: Text( style: TextStyle(color: selectedLanguage == "English" ? Colors.green : Colors.black),"English"),
                                            onTap: () {
                                              setState(() {
                                                selectedLanguage = "English";
                                                languageController.text = selectedLanguage;
                                                selectedLanguageTextColor = Colors.white; // Added this line
                                              });
                                              Navigator.pop(context);
                                            },
                                          ),
                                          ListTile(
                                            title: Text( style: TextStyle(color: selectedLanguage == "Chinese" ? Colors.green : Colors.black),"Chinese"),
                                            onTap: () {
                                              setState(() {
                                                selectedLanguage = "Chinese";
                                                languageController.text = selectedLanguage; 
                                                selectedLanguageTextColor = Colors.white;// Added this line
                                              });
                                              Navigator.pop(context);
                                            },
                                          ),
                                          ListTile(
                                            title: Text( style: TextStyle(color: selectedLanguage == "Oromo" ? Colors.green : Colors.black),"Oromo"),
                                            onTap: () {
                                              setState(() {
                                                selectedLanguage = "Oromo";
                                                languageController.text = selectedLanguage; 
                                                selectedLanguageTextColor = Colors.white;// Added this line
                                              });
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 50),
                    InkWell(
                      onTap: signUp,
                      child: Container(
                        margin: EdgeInsets.only(left: 25),
                        width: 300,
                        height: 43,
                        decoration: BoxDecoration(
                          color: Color(0xffb7b546),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Text(
                            "Register",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
