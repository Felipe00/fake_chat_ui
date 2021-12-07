class ApiResponse<T> {
  T? result;
  bool? _hasError;

  bool? get hasError => _hasError;

  ApiResponse.success({required this.result}) {
    _hasError = false;
  }

  ApiResponse.error() {
    _hasError = true;
  }
}
