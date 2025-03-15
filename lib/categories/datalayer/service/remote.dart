import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:retrofit/http.dart';

import '../model/response/categories_response.dart';

part "remote.g.dart";

@RestApi(baseUrl: 'https://www.sutradharfashion.com')

abstract class CategoriesRemote {
  factory CategoriesRemote(Dio dio, {String? baseUrl}) =
      _CategoriesRemote;
  @GET('/wp-json/wc/v3/products/categories')
  Future<List<CategoriesResponse>> getAllCategories();
}