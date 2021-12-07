import 'package:fake_chat_ui/core/illustrations/app_illustrations.dart';
import 'package:fake_chat_ui/modules/splash/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashPage extends StatelessWidget {
  SplashPage({Key? key}) : super(key: key);

  final SplashController _controller = Modular.get();

  @override
  Widget build(BuildContext context) {
    _controller.checkIfJwtIsValid();
    return SafeArea(
      child: Scaffold(
        body: Center(child: _body(context)),
      ),
    );
  }

  Widget _body(context) => Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            SvgPicture.string(
              AppIllustrations.kAPP_SPLASH,
              width: MediaQuery.of(context).size.width * .5,
              height: MediaQuery.of(context).size.width * .5,
            ),
            const Spacer()
          ],
        ),
      );
}
