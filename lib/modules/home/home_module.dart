import 'package:fake_chat_ui/core/services/network/dio_client.dart';
import 'package:fake_chat_ui/modules/home/child_pages/feed/feed_controller.dart';
import 'package:fake_chat_ui/modules/home/child_pages/feed/feed_module.dart';
import 'package:fake_chat_ui/modules/home/child_pages/feed/feed_page.dart';
import 'package:fake_chat_ui/modules/home/child_pages/feed/feed_repository.dart';
import 'package:fake_chat_ui/modules/home/home_controller.dart';
import 'package:fake_chat_ui/modules/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  final List<Bind<Object>> binds = [
    Bind((i) => DioClient()),
    Bind((i) => FeedRepository(client: i.get())),
    Bind((i) => FeedController(repository: i.get())),
    Bind((i) => HomeController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute,
        child: (_, __) => const HomePage(key: Key('Home')),
        children: [
          ModuleRoute('/feed', module: FeedModule()),
          // ModuleRoute('/chats', module: ChatModule()),
          // ModuleRoute('/profile', module: ProfileModule()),
        ])
  ];
}
