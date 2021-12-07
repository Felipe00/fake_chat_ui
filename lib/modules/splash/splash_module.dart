import 'package:fake_chat_ui/modules/splash/splash_controller.dart';
import 'package:fake_chat_ui/modules/splash/splash_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashModule extends Module {
  @override
  final List<Bind<Object>> binds = [
    Bind((i) => SplashController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/',
        child: (_, __) => const SplashPage(
              key: Key('Splash'),
            )),
  ];
}
