import 'package:atomic_widgets_example/features/product/domain/product_model.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
  });

  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Image.network(
            product.thumbnail,
            width: 100,
            height: 100,
          ),
          const SizedBox(height: 10),
          Text(
            product.name,
            style: Theme.of(context).textTheme.headline6,
          ),
          const SizedBox(height: 10),
          Text(
            product.desc,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          const SizedBox(height: 10),
          Text(
            product.price.toString(),
            style: Theme.of(context).textTheme.bodyText2,
          ),
        ],
      ),
    );
  }
}
