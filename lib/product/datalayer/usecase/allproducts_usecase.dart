import 'package:sutradharmobileapp/product/datalayer/model/response/product_response.dart';

import '../../../core/Api_response.dart';
import '../repository/allproduct_repository.dart';

class GetAllProductsUseCase {
  final allProductRepository repository;

  GetAllProductsUseCase(this.repository);

  Future<Result<List<AllProductResponse>>>  execute() {
    return repository.getAllProducts();
  }
}