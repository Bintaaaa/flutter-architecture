import 'package:flutter_architecture/data/models/response/example_response_models.dart';

abstract class ExampleLocalDatasource {
  Future<ExampleResponseModel> fetchExample();
}

class ExampleLocalDatasourceImpl implements ExampleLocalDatasource {
  @override
  Future<ExampleResponseModel> fetchExample() async {
    try {
      Map<String, dynamic> result = await Future.delayed(
        const Duration(microseconds: 100),
        () => {
          "status": 200,
          "data": "data exist",
          "message_error": "nothing",
        },
      );
      return ExampleResponseModel.fromJson(result);
    } catch (e) {
      rethrow;
    }
  }
}
