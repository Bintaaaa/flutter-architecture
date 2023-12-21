import 'package:flutter_architecture/domain/entities/request/example_response_entity.dart';

abstract class ExampleRepository {
  Future<ExampleResponseEntity> fetchExample();
}
