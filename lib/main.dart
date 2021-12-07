import 'package:fake_chat_ui/app_module.dart';
import 'package:fake_chat_ui/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_modular/flutter_modular.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  runApp(ModularApp(
    module: AppModule(),
    child: const AppWidget(),
  ));
}
