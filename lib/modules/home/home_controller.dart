import 'package:rx_notifier/rx_notifier.dart';

class HomeController {
  var bottomNavIndex = RxNotifier<int>(0);

  void changeBottomNavIndex({required int newIndex}) =>
      bottomNavIndex.value = newIndex;
}
