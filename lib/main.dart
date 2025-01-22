import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_advice_challenge/presentation/views/productListScreen.dart';
import 'core/di/injectable.dart';
import 'presentation/viewmodels/product_cubit.dart';

void main() {
  configureDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Challenge',
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        create: (_) => ProductCubit(getIt())..fetchProducts(),
        child: ProductScreen(),
      ),
    );
  }
}
