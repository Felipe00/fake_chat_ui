import 'package:fake_chat_ui/modules/home/child_pages/feed/feed_module.dart';
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
    ChildRoute('/', child: (_, __) => HomePage(key: const Key('Home')), children: [
      ModuleRoute('/feed/', module: FeedModule()),
      // ModuleRoute('/history', module: HistoryRegulationModule()),
      // ModuleRoute('/profile', module: ProfileModule()),
    ])
  ];
}
