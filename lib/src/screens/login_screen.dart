import 'package:flutter/material.dart';
import 'package:login_stateful/src/mixins/validation_mixin.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> with ValidationMixin {
  final formKey = GlobalKey<FormState>();

  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              emailField(),
              passwordField(),
              submitButton(),
            ],
          ),
        ));
  }

  Widget emailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        labelText: "Email Address",
        hintText: "you@example.com",
      ),
      validator: validateEmail,
      onSaved: (String? newValue) {
        email = newValue!;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
        labelText: "Password",
        hintText: "Password",
      ),
      validator: validationPwd,
      onSaved: (String? newValue) {
        password = newValue!;
      },
    );
  }

  Widget submitButton() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          var state = formKey.currentState;
          if (state != null && state.validate()) {
            state.save();

          }
        },
        child: const Text("Submit"),
      ),
    );
  }
}
