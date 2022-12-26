import 'package:atomic_widgets_example/features/product/domain/product_model.dart';

abstract class IProductRepository {
  Future<ProductModel> getProduct();
}

class ProductRepository implements IProductRepository {
  @override
  Future<ProductModel> getProduct() async {
    await Future.delayed(const Duration(seconds: 2));
    return ProductModel.mockProducts.getRandomElement;
  }
}
