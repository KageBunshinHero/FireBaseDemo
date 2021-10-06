import 'package:fbtry/Mp.dart';
import 'package:fbtry/loginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final fbUser = Provider.of<User?>(context);
    return (fbUser == null)
        ? LoginPage()
        : MainPage(
            user: fbUser,
          );
  }
}
