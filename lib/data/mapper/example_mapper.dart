import 'package:flutter_architecture/data/models/request/example_request_models.dart';
import 'package:flutter_architecture/data/models/response/example_response_models.dart';
import 'package:flutter_architecture/domain/entities/request/example_response_entity.dart';
import 'package:flutter_architecture/domain/entities/response/example_request_entity.dart';

class ExampleMapper {
  ExampleResponseEntity modelToEntity(ExampleResponseModel data) => ExampleResponseEntity(
        data: data.data ?? "-",
      );

  ExampleRequestModel entityToModel(ExampleRequestEntity data) => ExampleRequestModel(
        data: data.data,
      );
}
