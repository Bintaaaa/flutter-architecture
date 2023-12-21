import 'package:flutter_architecture/data/datasources/remote/example_remote_datasource.dart';
import 'package:flutter_architecture/domain/entities/response/example_response_models.dart';

class GetExampleInteractor {
  final ExampleRemoteDatasource repository;
  const GetExampleInteractor({
    required this.repository,
  });

  Future<ExampleResponseModel> call() async => await repository.fetchExample();
}
