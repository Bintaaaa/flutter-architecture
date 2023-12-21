import 'package:equatable/equatable.dart';
import 'package:flutter_architecture/utils/view_data_state.dart';

class ExampleState extends Equatable {
  final ViewData<String> exampleState;

  const ExampleState({
    required this.exampleState,
  });

  ExampleState copyWith({ViewData<String>? exampleState}) => ExampleState(
        exampleState: exampleState ?? this.exampleState,
      );

  @override
  List<Object?> get props => [
        exampleState,
      ];
}
