import 'package:sutradharmobileapp/product/datalayer/service/allproduct_request.dart';

import '../../../core/Api_response.dart';
import '../model/response/product_response.dart';

abstract class  allProductRepository {
  Future<Result<List<AllProductResponse>>> getAllProducts();
}

@override
class allProductRepositoryImpl implements allProductRepository {
  final AllproductRemote remote;

  allProductRepositoryImpl(this.remote);

  @override
  Future<Result<List<AllProductResponse>>> getAllProducts() async{
    try {
      List<AllProductResponse> response = await remote.getAllProducts();
      return Success(response);
    } catch (error) {
      return Failure(error.toString());
    }
  }
}