import 'package:sutradharmobileapp/categories/datalayer/repository/categoriesrepo.dart';

import '../model/response/categories_response.dart';

class GetCategoriesUseCase{
  final CategoriesRepo repository;

  GetCategoriesUseCase(this.repository);

  Future<List<CategoriesResponse>> execute(){
    return repository.getAllCategories();
  }
}