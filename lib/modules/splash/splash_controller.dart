import 'package:fake_chat_ui/modules/home/child_pages/feed/feed_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SplashController {
  /// Do some Request Network or Token Validation
  void checkIfJwtIsValid() => Future.delayed(const Duration(seconds: 3), () {
        Modular.to.pushReplacementNamed(FeedPage.routeName);
      });
}
