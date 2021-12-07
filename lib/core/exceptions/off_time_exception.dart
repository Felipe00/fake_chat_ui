import 'base_exception.dart';

class OffTimeException extends BaseException {
  @override
  String? cause = '';

  @override
  String? longCause = '';
}
