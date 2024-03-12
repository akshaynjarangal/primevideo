import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:primevideo/config/app_themes.dart';
import 'package:primevideo/presentation/bloc/show_list/show_list_bloc.dart';
import 'package:primevideo/utils/di/di.dart';
import 'config/app_router.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<ShowListBloc>()..add(ShowListLoadEvent()),
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Prime Video',
        theme: ThemeData(
          appBarTheme: const AppBarTheme(
            surfaceTintColor: AppTheme.darkBackgroundColor,
            backgroundColor: AppTheme.darkBackgroundColor,
            foregroundColor: AppTheme.primaryButtonColor,
          ),
          scaffoldBackgroundColor: AppTheme.darkBackgroundColor,
          primaryColor: AppTheme.primaryButtonColor,
          textTheme: const TextTheme(
            bodySmall: TextStyle(
              color: AppTheme.primaryButtonColor,
              fontWeight: FontWeight.w400,
            ),
            bodyMedium: TextStyle(
              color: AppTheme.primaryButtonColor,
              fontWeight: FontWeight.w600,
            ),
            bodyLarge: TextStyle(
              color: AppTheme.primaryButtonColor,
              fontWeight: FontWeight.w700,
            ),
            titleLarge: TextStyle(
              color: AppTheme.primaryButtonColor,
              fontWeight: FontWeight.w700,
            ),
          ),
          useMaterial3: true,
        ),
        routerConfig: router,
      ),
    );
  }
}
