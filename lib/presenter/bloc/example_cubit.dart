import 'package:flutter_architecture/domain/interactor/get_example_usecase.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_architecture/presenter/bloc/example_state.dart';
import 'package:flutter_architecture/utils/view_data_state.dart';

class ExampleCubit extends Cubit<ExampleState> {
  final GetExampleInteractor interactor;

  ExampleCubit({
    required this.interactor,
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
      final result = await interactor.call();
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
