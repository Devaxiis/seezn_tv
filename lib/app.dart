import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seezn_tv_app/src/config/theme/theme.dart';
import 'package:seezn_tv_app/src/presentation/bloc/one_video_bloc/bloc/one_video_data_bloc.dart';
import 'package:seezn_tv_app/src/presentation/ui/splash_screen.dart';

import 'src/presentation/bloc/all_data_bloc/bloc/all_data_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AllDataBloc()..add(AllDataCustomEvent()),
        ),
        BlocProvider(
          create: (context) => OneVideoDataBloc(),
        ),
      ],
      child: MaterialApp(
        theme: Apptheme.dark,
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
      ),
    );
  }
}
