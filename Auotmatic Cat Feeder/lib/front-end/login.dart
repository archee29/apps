import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        IconButton(
          onPressed: () => {},
          icon: const Icon(Icons.menu),
        ),
        const Spacer(),
        const CircleAvatar(
          radius: 20,
          backgroundImage: AssetImage('assets/a.png'),
        )
      ],
    ));
  }
}
