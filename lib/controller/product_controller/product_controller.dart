import 'dart:developer';

import 'package:get/get.dart';

import '../ui_api/produt_api/product_api.dart';

class ProductgetxController extends GetxController{
  RxList product=[].obs;

  getProduct()async{
    product.value= await GetProduct().getProduct();
    log("${product.value}");
  }
  @override
  void onInit() {
    getProduct();
    super.onInit();
  }
}