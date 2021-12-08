import 'package:fake_chat_ui/core/services/network/dio_client.dart';
import 'package:fake_chat_ui/modules/home/child_pages/feed/feed_controller.dart';
import 'package:fake_chat_ui/modules/home/child_pages/feed/feed_page.dart';
import 'package:fake_chat_ui/modules/home/child_pages/feed/feed_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FeedModule extends Module {
  @override
  final List<Bind<Object>> binds = [
    Bind((i) => DioClient()),
    Bind((i) => FeedRepository(client: i.get())),
    Bind((i) => FeedController(repository: i.get())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, __) => FeedPage(key: const Key('Feed')))
  ];
}
