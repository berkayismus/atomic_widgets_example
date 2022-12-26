// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:atomic_widgets_example/features/product/data/repositories/product_repository.dart';
import 'package:atomic_widgets_example/features/product/domain/product_model.dart';

part 'product_state.dart';

class ProductCubit extends Cubit<ProductState> {
  ProductCubit({
    required this.productRepository,
  }) : super(ProductState.initial());

  final IProductRepository productRepository;

  Future<void> getProduct() async {
    try {
      emit(state.copyWith(
        status: Status.loading,
      ));

      final product = await productRepository.getProduct();
      emit(state.copyWith(
        product: product,
        status: Status.loaded,
      ));
    } catch (e) {
      emit(state.copyWith(
        status: Status.failure,
      ));
    }
  }
}
