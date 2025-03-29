import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shopping_app/auth.dart';


class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final User? user = Auth().user;

  Future<void> _signOut() async {
    await Auth().signOut();
  }

  Widget _title(){
    return const Text(
      'Firebase Auth Example',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _userUid(){
    return Text(user?.email ?? 'User Email');
  }

  Widget _signOutButton(){
    return ElevatedButton(
      onPressed: _signOut,
      child: const Text('Sign Out'),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _title(),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            _userUid(),
            const SizedBox(height: 16),
            _signOutButton(),
          ],
        ),
      )
    );
  }
}
