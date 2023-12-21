import 'package:flutter_architecture/data/datasources/local/example_local_datasource.dart';
import 'package:flutter_architecture/data/datasources/remote/example_remote_datasource.dart';
import 'package:flutter_architecture/utils/injection.dart';

class DataInjection {
  DataInjection() {
    _datasource();
  }

  _datasource() {
    sl.registerLazySingleton<ExampleRemoteDatasource>(
      () => ExampleRemoteDatasourceImpl(),
    );
    sl.registerLazySingleton<ExampleLocalDatasource>(
      () => ExampleLocalDatasourceImpl(),
    );
  }
}
