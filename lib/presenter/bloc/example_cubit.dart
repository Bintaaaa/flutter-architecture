import 'package:flutter_architecture/domain/usecases/get_example_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_architecture/presenter/bloc/example_state.dart';
import 'package:flutter_architecture/utils/view_data_state.dart';

class ExampleCubit extends Cubit<ExampleState> {
  final GetExampleUsecase usecase;

  ExampleCubit({
    required this.usecase,
  }) : super(
          ExampleState(
            exampleState: ViewData.initial(),
          ),
        ) {
    getExample();
  }

  Future<void> getExample() async {
    emit(
      state.copyWith(
        exampleState: ViewData.loading(),
      ),
    );

    try {
      final result = await usecase.call();
      emit(
        state.copyWith(
          exampleState: ViewData.loaded(
            data: result.data,
          ),
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          exampleState: ViewData.error(
            message: e.toString(),
          ),
        ),
      );
    }
  }
}
