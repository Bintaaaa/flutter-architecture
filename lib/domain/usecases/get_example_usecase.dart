import 'package:flutter_architecture/domain/entities/request/example_response_entity.dart';
import 'package:flutter_architecture/domain/repository/example_repository.dart';

class GetExampleUsecase {
  final ExampleRepository repository;
  const GetExampleUsecase({
    required this.repository,
  });

  Future<ExampleResponseEntity> call() async => await repository.fetchExample();
}
