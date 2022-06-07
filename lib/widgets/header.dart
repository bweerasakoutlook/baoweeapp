import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hello Header NT',
      style: TextStyle(color: Colors.redAccent, fontSize: 30),
    );
  }
}
