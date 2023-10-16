// import 'package:demo/demo.dart' as demo;
import 'package:dio/dio.dart';

void main(List<String> arguments) {
   Future<void> signIn() async {
  try {
    final dio = Dio();
    final response = await dio.post(
      'http://0.0.0.0:3000/login',
      data: {'email': "a@a.com", 'password': "qwertui"},
    );

    if (response.statusCode == 201) {
      print('User loggin successfully');
     
    } else {
      print('Loggin failed');
    }
  } catch (error) {
    print('Error during signup: $error');
  }
}

  
}
