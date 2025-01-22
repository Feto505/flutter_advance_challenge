import 'package:flutter/material.dart';
import '../../data/models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.all(8),
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.blue,width: 2)
          ),
          // width: 140,
          // height: 120,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Image.network(product.image, height: 100, fit: BoxFit.cover),
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: Text(product.title, maxLines: 1, overflow: TextOverflow.ellipsis),
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: Text('EGP ${product.price}', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
            ],
          ),
        ),
        const Positioned(
          top: 10,
            right: 12,
            child: Icon(Icons.favorite_border)
        ),
        Positioned(
          bottom: 15,
            right: 12,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),

              child: Container(
                color: Colors.blueAccent,
                child: const Icon(Icons.add),
              ),
            )
        ),
      ],
    );
  }
}
