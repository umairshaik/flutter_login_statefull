import 'package:flutter/material.dart';
import 'package:login_stateful/src/screens/login_screen2.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        title: "Log me in",
        home: Scaffold(
            body: Padding(
          padding: EdgeInsets.all(10.0),
          child: LoginScreen2(),
        )));
  }
}
