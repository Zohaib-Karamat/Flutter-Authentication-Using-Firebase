import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'package:shopping_app/auth.dart';
import 'package:shopping_app/pages/home_page.dart';
import 'package:shopping_app/pages/login_register_page.dart';


class WigdetTree extends StatefulWidget {
  const WigdetTree({Key? key}) : super(key: key);

  @override
  State<WigdetTree> createState() => _WigdetTreeState();
}

class _WigdetTreeState extends State<WigdetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(stream: Auth().userChanges, builder: (context, snapshot) {
      if (snapshot.hasData) {
        return HomePage();
      } else {
        return const LoginPage();
      }
    });
  }
}