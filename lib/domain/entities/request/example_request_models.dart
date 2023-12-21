class ExampleRequestModel {
  final String? data;

  const ExampleRequestModel({
    this.data,
  });

  Map<String, dynamic> toJson() => {
        "data": data,
      };
}
