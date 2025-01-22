// import '../../data/models/product.dart';
// import '../../data/repositories/productRepo.dart';
//
// class ProductService {
//   final ProductRepository repository;
//
//   ProductService(this.repository);
//
//   Future<List<Product>> getProducts() => repository.fetchProducts();
// }
import 'package:injectable/injectable.dart';
import '../../data/models/product.dart';
import '../../data/repositories/productRepo.dart';

@injectable // Or @singleton if you need a single instance
class ProductService {
  final ProductRepository repository;

  ProductService(this.repository);

  Future<List<Product>> getProducts() => repository.fetchProducts();
}
