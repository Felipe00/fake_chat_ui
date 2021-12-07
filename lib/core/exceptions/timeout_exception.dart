import 'base_exception.dart';

class TimeoutException extends BaseException {
  @override
  String? cause = 'Tempo de resposta excedido';

  @override
  String? longCause =
      'O servidor demorou para responder.\nTente novamente mais tarde.';
}
