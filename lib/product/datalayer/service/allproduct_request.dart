import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../Constants.dart';
import '../model/response/product_response.dart';

part 'allproduct_request.g.dart';

@RestApi(baseUrl: baseurl)
abstract class AllproductRemote {
  factory AllproductRemote(Dio dio, {String? baseUrl}) = _AllproductRemote;

  @GET('/wp-json/wc/v3/products')
  Future<List<AllProductResponse>> getAllProducts();
}
