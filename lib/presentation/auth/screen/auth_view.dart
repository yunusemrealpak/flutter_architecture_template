import 'package:flutter/material.dart';

part '../widget/custom_text_field.dart';

class AuthView extends StatelessWidget {
  const AuthView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _CustomTextField(),
        ],
      ),
    );
  }
}