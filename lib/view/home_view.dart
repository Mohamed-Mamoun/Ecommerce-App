import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        elevation: 5,
      ),
      body: Center(
        child: ElevatedButton(
        onPressed: (() {
          FirebaseAuth.instance.signOut();
        })),
      ),
    );
  }
}