import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _loadProfileData(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator(); // You can use a loading indicator here
        } else if (snapshot.hasError) {
          return Text('Error loading data'); // Handle error
        } else {
          final name = snapshot.data!['name'];
          final email = snapshot.data!['email'];
          final language = snapshot.data!['language'];
          final average = snapshot.data!['average'];

          return Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    height: 400,
                    decoration: BoxDecoration(color: Colors.transparent),
                    child: Stack(
                      fit: StackFit.expand,
                      children: [
                        Positioned(
                          top: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            height: 250,
                            width: 100,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn-icons-png.flaticon.com/512/552/552721.png")),
                              borderRadius: BorderRadius.circular(50),
                              boxShadow: [
                                BoxShadow(
                                    offset: Offset(5, 5),
                                    blurRadius: 3,
                                    color: Colors.grey.shade300)
                              ],
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.white,
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Positioned(
                          bottom: 50,
                          left: 145,
                          right: 145,
                          child: Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                fit: BoxFit.fill,
                                image: NetworkImage(
                                  'https://cdn-icons-png.flaticon.com/512/552/552721.png',
                                ),
                              ),
                              border: Border.all(
                                color: Colors.white,
                                width: 2.0,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 35,
                          left: 35,
                          right: 135,
                          child: Container(
                            color: Colors.transparent,
                            child: Text(
                              name,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Positioned(
                          bottom: 0,
                          left: 45,
                          right: 145,
                          child: Text(
                            'ID: 123456',
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Personal Information',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: Colors.blue[700],
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: Text(
                                name,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.email,
                              color: Colors.blue[700],
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: Text(
                                email,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.language,
                              color: Colors.blue[700],
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: Text(
                                language,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 32,
                        ),
                        Text(
                          'Developer Contact Information',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.telegram,
                              color: Colors.blue[700],
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: Text(
                                't.me/mas0977',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.facebook,
                              color: Colors.blue[700],
                            ),
                            SizedBox(
                              width: 16,
                            ),
                            Expanded(
                              child: Text(
                                "facebook.com/mamexa09",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }

  Future<Map<String, dynamic>> _loadProfileData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final name = prefs.getString('name') ?? 'N/A';
    final email = prefs.getString('email') ?? 'N/A';
    final language = prefs.getString('language') ?? 'N/A';
    final average = prefs.getString('average') ?? 'N/A';

    return {
      'name': name,
      'email': email,
      'language': language,
      'average': average,
    };
  }
}
