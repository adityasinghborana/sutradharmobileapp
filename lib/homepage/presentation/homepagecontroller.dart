import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:sutradharmobileapp/product/datalayer/model/response/product_response.dart' ;
import 'package:sutradharmobileapp/product/datalayer/repository/allproduct_repository.dart';
import 'package:sutradharmobileapp/product/datalayer/service/allproduct_request.dart';
import 'package:sutradharmobileapp/product/datalayer/usecase/allproducts_usecase.dart';

class HomePageController extends GetxController {



  @override
  void onInit() {
    super.onInit();
    data();
  }
  GetAllProductsUseCase getAllProductsUseCase = GetAllProductsUseCase(allProductRepositoryImpl(AllproductRemote(Dio())));

  var category = [].obs;
  var experiences = [
    
    AllProductResponse(id: 6142, name: "Darjeeling", price: "498", images: [ProductImage(src: "https://www.sutradharfashion.com/wp-content/uploads/2024/05/darjeeling-2.jpg")], stock_status: "instock", status: "published"),
    AllProductResponse(id: 6142, name: "Darjeeling", price: "498", images: [ProductImage(src: "https://www.sutradharfashion.com/wp-content/uploads/2024/05/darjeeling-2.jpg")], stock_status: "instock", status: "published"),
    AllProductResponse(id: 6142, name: "Darjeeling", price: "498", images: [ProductImage(src: "https://www.sutradharfashion.com/wp-content/uploads/2024/05/darjeeling-2.jpg")], stock_status: "instock", status: "published"), AllProductResponse(id: 6142, name: "Darjeeling", price: "498", images: [ProductImage(src: "https://www.sutradharfashion.com/wp-content/uploads/2024/05/darjeeling-2.jpg")], stock_status: "instock", status: "published"), AllProductResponse(id: 6142, name: "Darjeeling", price: "498", images: [ProductImage(src: "https://www.sutradharfashion.com/wp-content/uploads/2024/05/darjeeling-2.jpg")], stock_status: "instock", status: "published"), AllProductResponse(id: 6142, name: "Darjeeling", price: "498", images: [ProductImage(src: "https://www.sutradharfashion.com/wp-content/uploads/2024/05/darjeeling-2.jpg")], stock_status: "instock", status: "published")
  ].obs;


  void data (){
    try{getAllProductsUseCase.execute().then((get){
      return {

       experiences.assignAll(get),
      };
    });}catch(e){
      print(e);
    }
  }
}
