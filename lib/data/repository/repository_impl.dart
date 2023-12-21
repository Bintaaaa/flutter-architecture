import 'package:flutter_architecture/data/datasources/local/example_local_datasource.dart';
import 'package:flutter_architecture/data/datasources/remote/example_remote_datasource.dart';
import 'package:flutter_architecture/data/mapper/example_mapper.dart';
import 'package:flutter_architecture/domain/entities/request/example_response_entity.dart';
import 'package:flutter_architecture/domain/repository/example_repository.dart';

class ExampleRepositoryImpl implements ExampleRepository {
  final ExampleLocalDatasource localDatasource;
  final ExampleRemoteDatasource remoteDatasource;
  final ExampleMapper mapper;

  const ExampleRepositoryImpl({
    required this.localDatasource,
    required this.remoteDatasource,
    required this.mapper,
  });

  @override
  Future<ExampleResponseEntity> fetchExample() async {
    try {
      final result = await remoteDatasource.fetchExample();
      return mapper.modelToEntity(
        result,
      );
    } catch (e) {
      throw Exception(
        e,
      );
    }
  }
}
