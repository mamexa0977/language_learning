import 'package:flutter/material.dart';
import 'package:language_learning/nav%20pages/features/stt.dart';
import 'package:language_learning/nav%20pages/features/translator/translator.dart';
import 'package:language_learning/nav%20pages/features/tts.dart';

import 'features/quiz/quiz_screen.dart';

class Features extends StatefulWidget {
  const Features({super.key});

  @override
  State<Features> createState() => _FeaturesState();
}

class _FeaturesState extends State<Features> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 2,),
            Container(color: Colors.transparent,
            width: 430,
            height: 250,
              child: Stack(children: [
            
                Positioned(
                  bottom: 12,
                  left: 5,
                  child: Container(padding: EdgeInsets.symmetric(horizontal: 200,vertical: 90),
                    child: Text(""),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xffFF8BC4)
                    ),
                    ),
                ),
                Positioned(
                  left: 25,
                  bottom: 10,
                  
                  child: 
                      Container(
                        width: 300,
                        
                        
                     
                        
                        
                        
                        child: Stack(
                          children: [
                            Image.asset("assets/images/3dgirl.png", scale: 1.5,),
                             ],
                        )),
                      
                    
                  ),   Positioned(
                                right: 50,
                                top: 100,
                                child: Container(
                                  
                                  
                                                        child: Text("Let's Learn ", style: TextStyle(color: Colors.white, fontSize: 20),),
                                                      ),
                              ),
                              Positioned(
                                right: 10,
                                top: 130,
                                child: Container(
                                
                                  
                                                        child: Text("Together! and Grow", style: TextStyle(color: Colors.white, fontSize: 20),),
                                                      ),
                              ),
                        
              
              
              ],),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical:5,horizontal: 20),
              child: Text("Catagory", style: TextStyle(color: Color(0xff333333), fontSize: 17, fontWeight: FontWeight.bold),),
            ),
            Container(
              margin: EdgeInsets.all(2),
              child: Column(
                children: [
                   Row(
                    
                      children: [
                         
                          InkWell(
                             onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>TextSpeech()));
                          },
                            child: Image.asset("assets/images/voice.png", scale: 2.1,width: 200))
                        , 
                         InkWell
                         (
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>TranslatorPage()));
                          },
                          child: Image.asset("assets/images/translate.png", scale: 1.7,width: 200,))
                        
                      ],
                    ),
                  
                 Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        
                         
                           InkWell(
                             onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>SpeechText()));
                          },
                             child: Padding(
                               padding: const EdgeInsets.only(left:8.0),
                               child: ClipRRect(
                                  borderRadius: BorderRadius.circular(40),
                                  child: Image.network("https://img.freepik.com/premium-vector/voice-assistant-concept-artificial-intelligence-wave-microphone-control-sound-recognition_653980-38.jpg", scale: 3.1,width: 140,)),
                             ),
                           ),
                          
                            Image.asset("assets/images/tutor.png", scale: 1,width: 250)
                        ,
                          
                        
                        
                        
                      ],
                    ),
                    Row(
                    
                      children: [
                          GestureDetector(
                            onTap: () {
                              
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>QuizScreen()));
                            },
                            child: Padding(
                               padding: const EdgeInsets.all(18),
                               child: ClipRRect(
                                  borderRadius: BorderRadius.circular(30),
                                  child: Image.network("https://99designs-blog.imgix.net/blog/wp-content/uploads/2021/06/98771747.jpg?auto=format&q=60&w=1280&h=960&fit=crop&crop=faces", scale: 4,width: 170,)),
                             ),
                          ),
                         
                         Image.asset("assets/images/voice.png", scale: 2.1,width: 150,)
                        
                      ],
                    ),
                      Row(
                  
                    children: [
                       
                        Image.asset("assets/images/voice.png", scale: 2.1,width: 200)
                      ,
                       Image.asset("assets/images/voice.png", scale: 2.1,width: 200,)
                      
                    ],
                  ),
                
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}