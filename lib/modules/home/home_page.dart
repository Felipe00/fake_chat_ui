import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home/';
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: _body(),
    ));
  }

  Widget _body() => const Center(child: Text('Hello'));
}
