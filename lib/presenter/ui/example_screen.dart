import 'package:flutter/material.dart';
import 'package:flutter_architecture/presenter/bloc/example_cubit.dart';
import 'package:flutter_architecture/presenter/bloc/example_state.dart';
import 'package:flutter_architecture/utils/view_data_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExampleScreen extends StatelessWidget {
  const ExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ExampleCubit, ExampleState>(
        builder: (context, state) {
          final status = state.exampleState.status;
          if (status.isLoading) {
            return const CircularProgressIndicator();
          } else if (status.isHasData) {
            final data = state.exampleState.data;
            return Center(
              child: Text(data!),
            );
          } else {
            final message = state.exampleState.message;
            return ErrorWidget(
              message,
            );
          }
        },
      ),
    );
  }
}
