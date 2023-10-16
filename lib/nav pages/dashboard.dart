
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:language_learning/Animation/FadeAnimation.dart';
// import 'package:language_learning/Shoes.dart';

// class DashBoard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
     
//       body: SingleChildScrollView(
//         child: Container(
//           padding: EdgeInsets.all(20),
//           child: Column(
//             children: <Widget>[
//               Container(
//                 height: 40,
//                 child: ListView(
//                   scrollDirection: Axis.horizontal,
//                   children: <Widget>[
//                     AspectRatio(
//                       aspectRatio: 2.2/1,
//                       child: FadeAnimation(1, Container(
//                         margin: EdgeInsets.only(right: 10),
//                         decoration: BoxDecoration(
//                           color: Colors.grey[200],
//                           borderRadius: BorderRadius.circular(20)
//                         ),
//                         child: Center(
//                           child: Text("All", style: TextStyle(fontSize: 20),),
//                         ),
//                       )),
//                     ),
//                     AspectRatio(
//                       aspectRatio: 2.2/1,
//                       child: FadeAnimation(1.1, Container(
//                         margin: EdgeInsets.only(right: 10),
//                         child: Center(
//                           child: Text("Amharic", style: TextStyle(fontSize: 17),),
//                         ),
//                       )),
//                     ),
//                     AspectRatio(
//                       aspectRatio: 2.2/1,
//                       child: FadeAnimation(1.2, Container(
//                         margin: EdgeInsets.only(right: 10),
//                         child: Center(
//                           child: Text("Oromo", style: TextStyle(fontSize: 17),),
//                         ),
//                       )),
//                     ),
//                     AspectRatio(
//                       aspectRatio: 2.2/1,
//                       child: FadeAnimation(1.3, Container(
//                         margin: EdgeInsets.only(right: 10),
//                         child: Center(
//                           child: Text("English", style: TextStyle(fontSize: 17),),
//                         ),
//                       )),
//                     ),
//                     AspectRatio(
//                       aspectRatio: 2.2/1,
//                       child: FadeAnimation(1.4, Container(
//                         margin: EdgeInsets.only(right: 10),
//                         child: Center(
//                           child: Text("Chineese", style: TextStyle(fontSize: 17),),
//                         ),
//                       )),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(height: 20,),
//               FadeAnimation(1.5, makeItem(image: 'https://i.pinimg.com/originals/5f/a3/a4/5fa3a4bec7692ddd5ecbeea387e91ed7.jpg', tag: 'red', context: context)),
//               FadeAnimation(1.6, makeItem(image: 'https://www.lingalot.com/wp-content/uploads/2022/01/Lingalot-Featured-Image-19-1-1024x576.png', tag: 'blue', context: context)),
//               FadeAnimation(1.7, makeItem(image: 'https://www.lingalot.com/wp-content/uploads/2022/01/Lingalot-Featured-Image-21-1-1024x576.png', tag: 'white', context: context)),

//                FadeAnimation(6.5, makeItem(image: 'https://i.ytimg.com/vi/x0WatSEvdL8/mqdefault.jpg', tag: 'yellow', context: context)),

//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   Widget makeItem({image, tag, context}) {
//     return Hero(
//       tag: tag,
//       child: GestureDetector(
//         onTap: () {
//           Navigator.push(context, MaterialPageRoute(builder: (context) => Shoes(image: image,)));
//         },
//         child: Container(
//           height: 250,
//           width: double.infinity,
//           padding: EdgeInsets.all(20),
//           margin: EdgeInsets.only(bottom: 20),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(20),
//             image: DecorationImage(
//               image: NetworkImage(image),
//               fit: BoxFit.cover
//             ),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.grey,
//                 blurRadius: 10,
//                 offset: Offset(0, 10)
//               )
//             ]
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Expanded(
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: <Widget>[
//                         FadeAnimation(1, Text("Quotes", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)),
//                         // SizedBox(height: 10,),
//                         // FadeAnimation(1.1, Text("Nike", style: TextStyle(color: Colors.white, fontSize: 20),)),

//                       ],
//                     ),
//                   ),
//                   FadeAnimation(1.2, Container(
//                     width: 35,
//                     height: 35,
//                     decoration: BoxDecoration(
//                       shape: BoxShape.circle,
//                       color: Colors.white
//                     ),
//                     child: Center(
//                       child: Icon(Icons.favorite_border, size: 20,),
//                     ),
//                   ))
//                 ],
//               ),
//               // FadeAnimation(1.2, Text("100\$", style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),)),              
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';

import '../Animation/FadeAnimation.dart';


class DashBoard extends StatefulWidget {
  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  String selectedLanguage = 'All'; // Default selected language
  final Map<String, List<String>> languageImages = {
    'All': [
      'https://i.pinimg.com/originals/5f/a3/a4/5fa3a4bec7692ddd5ecbeea387e91ed7.jpg',
      'https://www.lingalot.com/wp-content/uploads/2022/01/Lingalot-Featured-Image-19-1-1024x576.png',
      'https://www.lingalot.com/wp-content/uploads/2022/01/Lingalot-Featured-Image-21-1-1024x576.png',
      'https://i.ytimg.com/vi/x0WatSEvdL8/mqdefault.jpg',
    ],
    'Amharic': [
      'https://example.com/amharic_image1.jpg',
      'https://example.com/amharic_image2.jpg',
    ],
    'Oromo': [
      'https://example.com/oromo_image1.jpg',
      'https://example.com/oromo_image2.jpg',
    ],
    'English': [
      'https://example.com/english_image1.jpg',
      'https://example.com/english_image2.jpg',
    ],
    'Chinese': [
      'https://example.com/chinese_image1.jpg',
      'https://example.com/chinese_image2.jpg',
    ],
  };

  // Function to handle language option selection
  void selectLanguage(String language) {
    setState(() {
      selectedLanguage = language;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              Container(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    languageOption('All'),
                    languageOption('Amharic'),
                    languageOption('Oromo'),
                    languageOption('English'),
                    languageOption('Chinese'),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              // Display images based on selected language
              if (selectedLanguage != 'All')
                ...languageImages[selectedLanguage]!.map((image) {
                  return FadeAnimation(
                    1.5,
                    makeItem(image: image, context: context),
                  );
                }),
            ],
          ),
        ),
      ),
    );
  }

  // Widget to create a language option
  Widget languageOption(String language) {
    final isSelected = selectedLanguage == language;
    return GestureDetector(
      onTap: () {
        selectLanguage(language);
      },
      child: AspectRatio(
        aspectRatio: 2.2/1,
        child: Container(
          margin: EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            color: isSelected ? Colors.grey[200] : null,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Text(
              language,
              style: TextStyle(
                fontSize: isSelected ? 20 : 17, // Adjust font size for selected option
                color: isSelected ? Colors.blue : null, // Change text color for selected option
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal, // Make text bold for selected option
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Widget to create individual items
  Widget makeItem({required String image, required BuildContext context}) {
    return Hero(
      tag: image, // You may need to use a unique tag for each image
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Shoes(image: image,)));
        },
        child: Container(
          height: 250,
          width: double.infinity,
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: NetworkImage(image),
              fit: BoxFit.cover
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 10,
                offset: Offset(0, 10)
              )
            ]
          ),
          // Additional content for the item can be added here
        ),
      ),
    );
  }
}

class Shoes extends StatelessWidget {
  final String image;

  Shoes({required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shoes'),
      ),
      body: Center(
        child: Hero(
          tag: image,
          child: Image.network(image),
        ),
      ),
    );
  }
}


