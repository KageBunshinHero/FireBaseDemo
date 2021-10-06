import 'package:fbtry/firebase_auth.dart';

import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await AuthServ.signInAnon();
          },
          child: Text("Login Anon"),
        ),
      ),
    );
  }
}
