import 'package:sutradharmobileapp/product/datalayer/service/allproduct_request.dart';

import '../model/response/product_response.dart';

abstract class  allProductRepository {
   Future<List<AllProductResponse>> getallProducts();
}

@override
class allProductRepositoryImpl implements allProductRepository {
  final AllproductRemote remote;

  allProductRepositoryImpl(this.remote);

  @override
  Future<List<AllProductResponse>> getallProducts() {
    return remote.getAllProducts();
  }
}