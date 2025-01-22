// import 'package:dio/dio.dart';
// import 'package:get_it/get_it.dart';
// import 'package:injectable/injectable.dart';
//
// import '../../data/models/product.dart';
// @injectable
// final GetIt getIt = GetIt.instance;
// class ProductRepository {
//   final Dio dio;
//
//   ProductRepository(this.dio);
//
//   Future<List<Product>> fetchProducts() async {
//     if (!getIt.isRegistered<Dio>()) {
//       getIt.registerSingleton<Dio>(Dio());
//     }
//
//     final response = await dio.get('https://fakestoreapi.com/products');
//     return (response.data as List).map((json) => Product.fromJson(json)).toList();
//   }
// }
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import '../../data/models/product.dart';

@injectable
class ProductRepository {
  final Dio dio;

  // Inject Dio from GetIt
  ProductRepository() : dio = GetIt.instance<Dio>();

  Future<List<Product>> fetchProducts() async {
    final response = await dio.get('https://fakestoreapi.com/products');
    return (response.data as List).map((json) => Product.fromJson(json)).toList();
  }
}

