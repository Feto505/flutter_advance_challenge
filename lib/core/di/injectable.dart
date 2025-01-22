// import 'package:get_it/get_it.dart';
// import 'package:injectable/injectable.dart';
// import 'injectable.config.dart'; // Import the generated file
//
// final GetIt getIt = GetIt.instance;
//
// @InjectableInit()
// void configureDependencies() => getIt.init(); // Use getIt.init() instead of $initGetIt
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'injectable.config.dart'; // Import the generated file

final GetIt getIt = GetIt.instance;

@InjectableInit()
void configureDependencies() {
  // Register Dio only once here
  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt.init(); // Initialize other dependencies
}


