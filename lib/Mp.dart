import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'firebase_auth.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Page"),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("${user.uid}"),
              ElevatedButton(
                onPressed: () async {
                  await AuthServ.signOut();
                },
                child: Text("Log Out"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
