import 'package:freezed_annotation/freezed_annotation.dart';

part 'result.freezed.dart';

@Freezed(genericArgumentFactories: true)
class Result<T> with _$Result<T> {
  const factory Result.success(SuccessResponse<T> successData) = Success<T>;

  const factory Result.error(ErrorResponse errorData) = Error<T>;
}

class SuccessResponse<T> {
  SuccessResponse({required this.code, required this.data});

  final int code;
  final T data;
}

class ErrorResponse {
  ErrorResponse({required this.code, required this.errorMessage});

  final int code;
  final String errorMessage;
}
