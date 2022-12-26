import 'package:atomic_widgets_example/features/product/data/repositories/product_repository.dart';
import 'package:atomic_widgets_example/features/product/presentation/cubit/product_cubit.dart';
import 'package:atomic_widgets_example/features/product/presentation/widgets/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductPageWrapperProvider extends StatelessWidget {
  const ProductPageWrapperProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => ProductCubit(
              productRepository: ProductRepository(),
            )..getProduct(),
        child: const ProductPage());
  }
}

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atomic Widgets Example'),
      ),
      body: const _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          BlocBuilder<ProductCubit, ProductState>(
            builder: (context, state) {
              if (state.status == Status.initial) {
                return const SizedBox.shrink();
              } else if (state.status == Status.loading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state.status == Status.loaded) {
                return ProductCard(
                  product: state.product!,
                );
              } else {
                return const Center(
                  child: Text('Bir hata meydana geldi'),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
