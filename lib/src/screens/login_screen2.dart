import 'package:flutter/material.dart';
import 'package:login_stateful/src/screens/widgets/email_field_widget.dart';
import 'package:login_stateful/src/screens/widgets/password_field_widget.dart';
import 'package:login_stateful/src/screens/widgets/submit_button_widget.dart';

class LoginScreen2 extends StatefulWidget {
  const LoginScreen2({super.key});

  @override
  State<StatefulWidget> createState() {
    return LoginScreenState2();
  }
}

class LoginScreenState2 extends State<LoginScreen2> {
  final loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(20.0),
        child: Form(
          key: loginFormKey,
          child: Column(
            children: [
              const EmailFieldWidget(),
              const Padding(padding: EdgeInsets.only(top: 20.0)),
              const PasswordFieldWidget(),
              const Padding(padding: EdgeInsets.only(top: 20.0)),
              SubmitButtonWidget(parentKey: loginFormKey),
            ],
          ),
        ));
  }
}
