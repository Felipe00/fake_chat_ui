import 'package:fake_chat_ui/modules/home/components/custom_bottom_nav.dart';
import 'package:fake_chat_ui/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rx_notifier/rx_notifier.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {

  @override
  Widget build(BuildContext context) {
    controller.changeBottomNavIndex(newIndex: 0);
    return Scaffold(
      bottomNavigationBar: _bottomNav(),
      body: RouterOutlet(),
    );
  }

  Widget _bottomNav() => RxBuilder(
        builder: (_) => CustomBottomNav(
          currentIndex: controller.bottomNavIndex.value,
          onTap: (index) => controller.changeBottomNavIndex(newIndex: index),
        ),
      );
}
