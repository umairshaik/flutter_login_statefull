import 'package:flutter/material.dart';
import 'package:login_stateful/src/mixins/validation_mixin.dart';

class LoginScreen2 extends StatefulWidget {
  const LoginScreen2({super.key});

  @override
  State<StatefulWidget> createState() {
    return LoginScreenState2();
  }
}

class LoginScreenState2 extends State<LoginScreen2> with ValidationMixin {
  final loginFormKey = GlobalKey<FormState>();
  String email = '';
  String pwd = '';

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20.0),
        child: Form(
          key: loginFormKey,
          child: Column(
            children: [
              emailFieldWidget(),
              const Padding(padding: EdgeInsets.only(top: 20.0)),
              passwordFieldWidget(),
              const Padding(padding: EdgeInsets.only(top: 20.0)),
              submitButtonWidget(),
            ],
          ),
        ));
  }

  Widget emailFieldWidget() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      decoration: const InputDecoration(
        labelText: "Email address",
        hintText: 'youremail@example.com',
      ),
      validator: validateEmail,
      onSaved: (value) {
        email = value!;
        print(value);
      },
    );
  }

  Widget passwordFieldWidget() {
    return TextFormField(
      obscureText: true,
      decoration: const InputDecoration(
        labelText: 'Password',
        hintText: 'Password',
      ),
      validator: validationPwd,
      onSaved: (value) {
        pwd = value!;
        print(value);
      },
    );
  }

  Widget submitButtonWidget() {
    return ElevatedButton(
      onPressed: () {
        if (loginFormKey.currentState!.validate()) {
          loginFormKey.currentState!.save();
          print("Time to post $email and $pwd to my API");
          print("accepted");
        }
      },
      child: const Text('Submit!'),
    );
  }
}
