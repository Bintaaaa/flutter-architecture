import 'package:flutter/material.dart';
import 'package:flutter_architecture/injection/injection.dart';
import 'package:flutter_architecture/presenter/bloc/example_cubit.dart';
import 'package:flutter_architecture/presenter/ui/example_screen.dart';
import 'package:flutter_architecture/utils/injection.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  Injections();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider<ExampleCubit>(
            create: (context) => ExampleCubit(
              interactor: sl(),
            ),
          )
        ],
        child: const ExampleScreen(),
      ),
    );
  }
}
