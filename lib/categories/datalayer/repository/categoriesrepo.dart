
import 'package:sutradharmobileapp/categories/datalayer/service/remote.dart';

import '../model/response/categories_response.dart';

abstract class CategoriesRepo{
  Future<List<CategoriesResponse>> getAllCategories();
}

@override
class CategoriesRepoImpl implements CategoriesRepo{
  final CategoriesRemote remote;
  CategoriesRepoImpl(this.remote);

  @override
  Future<List<CategoriesResponse>> getAllCategories(){
    return remote.getAllCategories();
  }
}