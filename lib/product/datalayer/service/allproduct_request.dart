
import 'package:retrofit/retrofit.dart';
import'package:dio/dio.dart';
import '../../../Constants.dart';
import '../model/response/product_response.dart';


part 'allproduct_request.g.dart';

@RestApi(baseUrl: baseurl)
abstract class AllproductRemote {
  factory AllproductRequest(Dio dio, {String? baseUrl}) =
      _AllproductRequest;

  @GET('/')
  Future<List<AllProductResponse>> getAllProducts();
}
