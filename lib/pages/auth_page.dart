import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "package:project/pages/home_page.dart";
import 'package:firebase_core/firebase_core.dart';
import "package:project/pages/login_page.dart";

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return const HomePage();
            } else {
              return LoginPage();
            }
          }),
    );
  }
}
