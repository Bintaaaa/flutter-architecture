class ExampleResponseModel {
  final String? data;

  const ExampleResponseModel({
    this.data,
  });

  factory ExampleResponseModel.fromJson(Map<String, dynamic> json) => ExampleResponseModel(
        data: json["data"],
      );
}
