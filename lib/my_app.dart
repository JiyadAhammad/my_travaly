import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_travaly/features/home/presentation/bloc/home_bloc.dart';
import 'package:my_travaly/init_dependencies.dart';

import 'core/theme/theme_data/theme.dart';
import 'features/home/presentation/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => getIt<HomeBloc>())],
      child: MaterialApp(
        title: 'My Travaly',
        theme: lightTheme,
        home: const HomePage(),
      ),
    );
  }
}
