import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../Constants.dart';
import '../model/response/product_response.dart';

part 'allproduct_request.g.dart';

@RestApi(baseUrl: baseurl)
abstract class AllproductRemote {
  factory AllproductRemote(Dio dio, {String? baseUrl}) = _AllproductRemote;

  @GET('/wp-json/wc/v3/products')
  Future<List<AllProductResponse>> getAllProducts({
    @Query('consumer_key') String consumerKey = 'ck_79dcb84dcfcdf09c0efbe0c5bb5388499a92a0cb',
    @Query('consumer_secret') String consumerSecret = 'cs_7ffb1193de0c35b89f863452d1b60290f8e3e60f',
  });
}

