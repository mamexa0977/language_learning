import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:language_learning/nav%20pages/feature.dart';
import 'package:language_learning/nav%20pages/profile.dart';

import 'nav pages/dashboard.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   int _index = 0;
   List<Widget> screen = [
    
    DashBoard(),
    Features(),
    ProfilePage()
    
   ];
  @override
  Widget build(BuildContext context) {              
    return Scaffold(
       appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Image.network("https://static.thenounproject.com/png/583801-200.png", scale: 4,),
        title: Text("FLLA", style: TextStyle(color: Colors.black, fontSize: 25),),
        
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Colors.black,), onPressed: () {  },
          ),
        
        ],
      ),
     
      backgroundColor: Colors.white,
     body: IndexedStack(
        index: _index,
        children: screen,
      ),
       
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        backgroundColor: Colors.transparent,
        color: Color(0xffA272FF),
      index: _index,
      onTap: (index){
        setState(() {
          _index = index ;
        });
      }, 
        items: [
                  Icon(Icons.favorite,color: Colors.white,),
        Icon(Icons.home_filled,color: Colors.white,),

        Icon(Icons.bar_chart_rounded,color: Colors.white,),
        
      ]),
    
    );
  }
}


// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class HomePage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home Page'),
//       ),
//       body: HomeBody(),
//     );
//   }
// }

// class HomeBody extends StatefulWidget {
//   @override
//   _HomeBodyState createState() => _HomeBodyState();
// }

// class _HomeBodyState extends State<HomeBody> {
//   String savedName = '';
//   String savedEmail = '';
//   String savedLanguage = '';

//   @override
//   void initState() {
//     super.initState();
//     _loadSavedData();
//   }

//   _loadSavedData() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     setState(() {
//       savedName = prefs.getString('name') ?? '';
//       savedEmail = prefs.getString('email') ?? '';
//       savedLanguage = prefs.getString('language') ?? '';
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text('Saved Name: $savedName'),
//           Text('Saved Email: $savedEmail'),
//           Text('Saved Language: $savedLanguage'),
//         ],
//       ),
//     );
//   }
// }
