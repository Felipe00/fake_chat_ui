import 'package:fake_chat_ui/modules/home/components/custom_bottom_nav.dart';
import 'package:fake_chat_ui/modules/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:rx_notifier/rx_notifier.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/home/';
  HomePage({Key? key}) : super(key: key);

  final HomeController _controller = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: _bottomNav(),
      body: RouterOutlet(),
    );
  }

  Widget _bottomNav() => RxBuilder(
        builder: (_) => CustomBottomNav(
          currentIndex: _controller.bottomNavIndex.value,
          onTap: (index) => _controller.changeBottomNavIndex(newIndex: index),
        ),
      );
}
