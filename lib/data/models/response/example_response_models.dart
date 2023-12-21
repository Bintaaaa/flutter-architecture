class ExampleResponseModel {
  final int? status;
  final String? data;
  final String? messageError;

  const ExampleResponseModel({
    this.status,
    this.data,
    this.messageError,
  });

  factory ExampleResponseModel.fromJson(Map<String, dynamic> json) => ExampleResponseModel(
        status: json["status"],
        data: json["data"],
        messageError: json["message_error"],
      );
}
