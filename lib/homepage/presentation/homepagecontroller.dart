import 'package:get/get.dart';
import 'package:sutradharmobileapp/product/datalayer/model/response/product_response.dart';
import 'package:sutradharmobileapp/product/datalayer/repository/allproduct_repository.dart';
import 'package:sutradharmobileapp/product/datalayer/service/allproduct_request.dart';
import 'package:sutradharmobileapp/product/datalayer/usecase/allproducts_usecase.dart';

import '../../core/dio_interceptor.dart';

class HomePageController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    setupUseCase();
    data();
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
  var experiences = [
    AllProductResponse(
        id: 6142,
        name: "Darjeeling",
        price: "498",
        images: [
          ProductImage(
              src:
                  "https://www.sutradharfashion.com/wp-content/uploads/2024/05/darjeeling-2.jpg")
        ],
        stock_status: "instock",
        status: "published"),
  ].obs;

  void data() {
    try {
      print("itsworking");
      getAllProductsUseCase.execute().then((get) {
        print(get.toList().map((e) => e.name));
        experiences.assignAll(get);
      });
    } catch (e) {
      print(e);
    }
  }
}
