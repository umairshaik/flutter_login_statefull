import 'package:flutter/material.dart';

class SubmitButtonWidget extends StatelessWidget {
  final GlobalKey<FormState> parentKey;

  const SubmitButtonWidget({super.key, required this.parentKey});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        parentKey.currentState?.reset();
      },
      child: const Text('Submit!'),
    );
  }
}
