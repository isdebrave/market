enum StatusEnum { initial, loading, success, error }

extension StatusEnumExt on StatusEnum {
  bool get isInitial => this == StatusEnum.initial;

  bool get isLoading => this == StatusEnum.loading;

  bool get isSuccess => this == StatusEnum.success;

  bool get isError => this == StatusEnum.error;
}
