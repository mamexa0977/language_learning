import 'package:flutter/material.dart';

class Tutor extends StatefulWidget {
  const Tutor({super.key});

  @override
  State<Tutor> createState() => _TutorState();
}

class _TutorState extends State<Tutor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      body: Center(
        child: Text("tutor"),
      ),
    );
  }
}