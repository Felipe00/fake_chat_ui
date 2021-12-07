import 'package:fake_chat_ui/modules/home/home_module.dart';
import 'package:fake_chat_ui/modules/splash/splash_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'app_controller.dart';

class AppModule extends Module {
  @override
  final List<Bind<Object>> binds = [
    Bind((i) => AppController()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute('/', module: SplashModule()),
    ModuleRoute('/home', module: HomeModule()),
  ];
}