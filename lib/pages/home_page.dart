import "package:firebase_auth/firebase_auth.dart";
import "package:firebase_core/firebase_core.dart";
import "package:flutter/material.dart";
import "login_page.dart";
import "package:project/components/my_button.dart";
import "package:project/components/logout.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  logoutFunction() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Center(
              child: Text(
                "VOCE LOGOU",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            LogoutButton(
              onTap: logoutFunction,
            )
          ],
        ),
      ),
    );
  }
}
