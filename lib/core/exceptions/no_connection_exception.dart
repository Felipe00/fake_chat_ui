import 'base_exception.dart';

class NoConnectionException extends BaseException {
  @override
  String? cause = 'Sem conexão com a internet';

  @override
  String? longCause =
      'Não conseguimos conexão com a internet.\nVerifique a sua conexão e tente novamente.';
}
