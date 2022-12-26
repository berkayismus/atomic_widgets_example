// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'product_cubit.dart';

enum Status { initial, loading, loaded, failure }

class ProductState extends Equatable {
  final ProductModel? product;
  final Status status;

  const ProductState({this.product, required this.status});

  factory ProductState.initial() {
    return const ProductState(
      product: null,
      status: Status.initial,
    );
  }

  @override
  List<Object?> get props => [product, status];

  @override
  bool get stringify => true;

  ProductState copyWith({
    ProductModel? product,
    Status? status,
  }) {
    return ProductState(
      product: product ?? this.product,
      status: status ?? this.status,
    );
  }
}
