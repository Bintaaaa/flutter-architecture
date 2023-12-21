import 'package:flutter_architecture/data/datasources/local/example_local_datasource.dart';
import 'package:flutter_architecture/data/datasources/remote/example_remote_datasource.dart';
import 'package:flutter_architecture/data/mapper/example_mapper.dart';
import 'package:flutter_architecture/data/repository/repository_impl.dart';
import 'package:flutter_architecture/domain/repository/example_repository.dart';
import 'package:flutter_architecture/utils/injection.dart';

class DataInjection {
  DataInjection() {
    _datasource();
    _mapper();
    _repository();
  }

  _datasource() {
    sl.registerLazySingleton<ExampleRemoteDatasource>(
      () => ExampleRemoteDatasourceImpl(),
    );
    sl.registerLazySingleton<ExampleLocalDatasource>(
      () => ExampleLocalDatasourceImpl(),
    );
  }

  _mapper() {
    sl.registerLazySingleton<ExampleMapper>(
      () => ExampleMapper(),
    );
  }

  _repository() {
    sl.registerLazySingleton<ExampleRepository>(
      () => ExampleRepositoryImpl(
        localDatasource: sl(),
        remoteDatasource: sl(),
        mapper: sl(),
      ),
    );
  }
}
