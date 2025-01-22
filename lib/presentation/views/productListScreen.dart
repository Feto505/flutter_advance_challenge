import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../data/models/product.dart';
import '../../presentation/viewmodels/product_cubit.dart';
import '../widgets/product_card_widget.dart';

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Products')),
      body: BlocBuilder<ProductCubit, List<Product>>(
        builder: (context, products) {
          if (products.isEmpty) {
            return const Center(child: CircularProgressIndicator());
          }
          return GridView.builder(
            gridDelegate:  const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.90,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) {
              return ProductCard(product: products[index]);
            },
          );
        },
      ),
    );
  }
}
