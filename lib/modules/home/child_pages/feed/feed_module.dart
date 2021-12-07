import 'package:fake_chat_ui/modules/home/child_pages/feed/feed_controller.dart';
import 'package:fake_chat_ui/modules/home/child_pages/feed/feed_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FeedModule extends Module {
  @override
  final List<Bind<Object>> binds = [
    Bind((i) => FeedController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => FeedPage(key: const Key('Feed')))
  ];
}
