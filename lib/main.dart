import 'package:flutter/material.dart';
import 'package:language_learning/auth/login.dart';
import 'package:language_learning/quize/models.dart';
import 'package:language_learning/screens/login_screen/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
   
      home:  Scaffold
      (body: LoginScreen()),
    );
  }
}




// final questions = [
//   Question(
//     text: 'How many letters are in the English alphabet?',
//     options: [
//       Option(text: '21', isCorrect: false),
//       Option(text: '25', isCorrect: false),
//       Option(text: '26', isCorrect: true),
//       Option(text: '28', isCorrect: false),
//     ],
//   ),
//   Question(
//     text: 'What is the opposite of "begin"?',
//     options: [
//       Option(text: 'End', isCorrect: true),
//       Option(text: 'Start', isCorrect: false),
//       Option(text: 'Finish', isCorrect: false),
//       Option(text: 'Commence', isCorrect: false),
//     ],
//   ),
//   Question(
//     text: 'Which word means "a written or printed work consisting of pages glued or sewn together along one side and bound in covers"?',
//     options: [
//       Option(text: 'Book', isCorrect: true),
//       Option(text: 'Newspaper', isCorrect: false),
//       Option(text: 'Magazine', isCorrect: false),
//       Option(text: 'Brochure', isCorrect: false),
//     ],
//   ),
//   Question(
//     text: 'What is the past tense of "run"?',
//     options: [
//       Option(text: 'Running', isCorrect: false),
//       Option(text: 'Ran', isCorrect: true),
//       Option(text: 'Runned', isCorrect: false),
//       Option(text: 'Runned', isCorrect: false),
//     ],
//   ),
//   Question(
//     text: 'What is the synonym for "happy"?',
//     options: [
//       Option(text: 'Sad', isCorrect: false),
//       Option(text: 'Joyful', isCorrect: true),
//       Option(text: 'Angry', isCorrect: false),
//       Option(text: 'Excited', isCorrect: false),
//     ],
//   ),
//   Question(
//     text: 'Which word means "a large, wild cat with a spotted coat"?',
//     options: [
//       Option(text: 'Lion', isCorrect: false),
//       Option(text: 'Leopard', isCorrect: true),
//       Option(text: 'Tiger', isCorrect: false),
//       Option(text: 'Cheetah', isCorrect: false),
//     ],
//   ),
//   Question(
//     text: 'What is the plural form of "child"?',
//     options: [
//       Option(text: 'Childs', isCorrect: false),
//       Option(text: 'Childes', isCorrect: false),
//       Option(text: 'Children', isCorrect: true),
//       Option(text: 'Childies', isCorrect: false),
//     ],
//   ),
//   Question(
//     text: 'What is the opposite of "expand"?',
//     options: [
//       Option(text: 'Grow', isCorrect: false),
//       Option(text: 'Shrink', isCorrect: true),
//       Option(text: 'Enlarge', isCorrect: false),
//       Option(text: 'Extend', isCorrect: false),
//     ],
//   ),
//   Question(
//     text: 'Which word means "a written message sent by post or electronically"?',
//     options: [
//       Option(text: 'Email', isCorrect: false),
//       Option(text: 'Letter', isCorrect: true),
//       Option(text: 'Text', isCorrect: false),
//       Option(text: 'Note', isCorrect: false),
//     ],
//   ),
//   Question(
//     text: 'What is the synonym for "beautiful"?',
//     options: [
//       Option(text: 'Ugly', isCorrect: false),
//       Option(text: 'Attractive', isCorrect: true),
//       Option(text: 'Pretty', isCorrect: false),
//       Option(text: 'Handsome', isCorrect: false),
//     ],
//   ),
//   Question(
//     text: 'What is the past tense of "eat"?',
//     options: [
//       Option(text: 'Ate', isCorrect: true),
//       Option(text: 'Eated', isCorrect: false),
//       Option(text: 'Eaten', isCorrect: false),
//       Option(text: 'Eats', isCorrect: false),
//     ],
//   ),
//   Question(
//     text: 'Which word means "a long journey, especially by sea or in space"?',
//     options: [
//       Option(text: 'Voyage', isCorrect: true),
//       Option(text: 'Adventure', isCorrect: false),
//       Option(text: 'Journey', isCorrect: false),
//       Option(text: 'Expedition', isCorrect: false),
//     ],
//   ),
//   Question(
//     text: 'What is the plural form of "man"?',
//     options: [
//       Option(text: 'Mans', isCorrect: false),
//       Option(text: 'Men', isCorrect: true),
//       Option(text: 'Mens', isCorrect: false),
//       Option(text: 'Mannies', isCorrect: false),
//     ],
//   ),
//   Question(
//     text: 'What is the antonym of "strong"?',
//     options: [
//       Option(text: 'Powerful', isCorrect: false),
//       Option(text: 'Weak', isCorrect: true),
//       Option(text: 'Mighty', isCorrect: false),
//       Option(text: 'Sturdy', isCorrect: false),
//     ],
//   ),
//   Question(
//     text: 'Which word means "a sudden and violent shaking of the ground"?',
//     options: [
//       Option(text: 'Eruption', isCorrect: false),
//       Option(text: 'Tremor', isCorrect: true),
//       Option(text: 'Flood', isCorrect: false),
//       Option(text: 'Hurricane', isCorrect: false),
//     ],
//   ),
// ];


// class QuestionWidget extends StatefulWidget {
//   const QuestionWidget({super.key, });
 
//   @override
//   State<QuestionWidget> createState() => _QuestionWidgetState();
// }

// class _QuestionWidgetState extends State<QuestionWidget> {
//   int _questionNumber =1;
 
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.symmetric(horizontal: 16),
//       child: Column(
//         children: [
//           SizedBox(height: 32,),
//           Text('Question $_questionNumber/${questions.length}'),
//           Divider(thickness: 1, color: Colors.grey,),

//           Expanded(child: PageView.builder(itemBuilder: (context, index){
//             final _question = questions[index];
//             return buildQuestion(_question);
//           } , physics: NeverScrollableScrollPhysics(),
//           itemCount: questions.length,
//           )),
//           SizedBox(height: 20,)
//         ],
//       ),
//     );
//   }
  
  
// Column buildQuestion(Question question){
//   return Column(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       SizedBox(height: 32,),Text(question.text,style: TextStyle(fontSize: 25),),
//        SizedBox(height: 32,),
//        Expanded(child: 
//        OptionWidget(question: question,

//        onClickedOption: (option){
//         if(question.isLocked){
//           return;
//         } else {
//           setState(() {
//             question.isLocked = true;
//             question.selectedOption = option;
//           });
//         }
//        },
//        )
//        )
//     ],
//   );
// }

// }

// class OptionWidget extends StatelessWidget {
//   const OptionWidget({super.key, required this.question, required this.onClickedOption});
//   final Question question;
//   final ValueChanged<Option> onClickedOption;

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children:  question.options.map((option) => buildOption(context, option)).toList() ,
//     );
//   }
// }

// Color getColorForOption(Option option, Question question){
//   final isSelected = option == question.selectedOption;
//   if(question.isLocked){
//     if (question.isLocked) {
//       if (isSelected) {
//         return option.isCorrect ? Colors.green : Colors.red;
        
//       }else if (option.isCorrect){
//         return Colors.green;
//       }
      
//     } 
//     return Colors.grey;
//   }
// }
// Widget buildOption(BuildContext context, Option option){
  
//   final color = getColorForOption(option,question);
//   return GestureDetector(
//     onTap: () => onClickedOption(option),
//     child: Container(
//       decoration: BoxDecoration(
//         border: Border.all(color: color)
//       ),
//       height: 50,
//       margin: EdgeInsets.symmetric(vertical: 8),
  
  
  
  
//       padding: EdgeInsets.all(12),
      
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text(option.text, style: TextStyle(fontSize: 20),)
//         ],
//       ),
//     ),
//   );
// }
  