import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:hp_app/data/api_provider.dart';
import 'package:hp_app/presentation/content/content_page.dart';
import 'package:hp_app/theme/colors.dart';

void main() {
  GetIt.I.registerFactory(
    () => ApiProvider(
      Dio(
        BaseOptions(
          baseUrl: 'https://hp-api.onrender.com/api',
        ),
      ),
    ),
  );

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
        filledButtonTheme: FilledButtonThemeData(
          style: FilledButton.styleFrom(
            backgroundColor: AppColors.gryffindor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(4),
              ),
              side: BorderSide(
                color: AppColors.gryffindor,
                width: 1,
              ),
            ),
            fixedSize: const Size.fromHeight(24),
          ),
        ),
      ),
      home: const ContentPage(),
    );
  }
}
