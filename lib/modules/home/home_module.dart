import 'package:fake_chat_ui/modules/home/home_controller.dart';
import 'package:fake_chat_ui/modules/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  final List<Bind<Object>> binds = [
    Bind((i) => HomeController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, __) => const HomePage(
        key: Key('Home'),
      ),
    ),
  ];
}
