import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/product.dart';

import '../../domain/repositories/product_service.dart';

class ProductCubit extends Cubit<List<Product>> {
  final ProductService productService;

  ProductCubit(this.productService) : super([]);

  void fetchProducts() async {
    try {
      final products = await productService.getProducts();
      emit(products);
    } catch (e) {
      emit([]);
    }
  }
}
