import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sutradharmobileapp/core/Api_response.dart';
import 'package:sutradharmobileapp/product/datalayer/repository/allproduct_repository.dart';
import 'package:sutradharmobileapp/product/datalayer/service/allproduct_request.dart';
import 'package:sutradharmobileapp/product/datalayer/usecase/allproducts_usecase.dart';

import '../../core/dio_interceptor.dart';
import '../../product/datalayer/model/response/product_response.dart';

class HomePageController extends GetxController {
  @override
  void onInit() {
    setupUseCase();
    data(); // Renamed 'data' to 'fetchData' for clarity
    super.onInit();
  }

  /// ✅ Initialize DioClient Instance
  final dio = DioClient().getInstance();

  /// ✅ Declare UseCase as Nullable Initially
  late GetAllProductsUseCase getAllProductsUseCase;

  /// ✅ Now Setup UseCase After Constructor
  void setupUseCase() {
    getAllProductsUseCase =
        GetAllProductsUseCase(allProductRepositoryImpl(AllproductRemote(dio)));
  }

  var category = [].obs;
  RxList<AllProductResponse> productList = <AllProductResponse>[].obs;

  /// Fetch products data
  void data() async {
    final result = await getAllProductsUseCase.execute();

    if (result is Success<List<AllProductResponse>>) {
      productList.assignAll(result.data);
    } else if (result is Failure<List<AllProductResponse>>) {
      Get.snackbar(
        "Error", // Title
        result.message, // Message
        snackPosition: SnackPosition.TOP, // Show at bottom
        backgroundColor: Colors.redAccent.withValues(alpha: 0.8),
        colorText: Colors.white,
      );
    }
  }
}
