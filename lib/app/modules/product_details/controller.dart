import 'package:evalu8/app/core/values/images_path.dart';
import 'package:get/get.dart';
class ProductDetailsController extends GetxController{
  int currentIndex = 0;
  int imageIndex = 0;
  bool hasMore = false;
  List<String> images = [
    product_sample,
    product,
    product_sample,
  ];
  next(){
    int newIndex = imageIndex + 1;
    if (newIndex <= images.length){
      imageIndex = newIndex;
      currentIndex = newIndex;
      update();
    }
  }
  previous(){
    int newIndex = imageIndex - 1;
    if (newIndex <= images.length && newIndex >= 0){
      imageIndex = newIndex;
      currentIndex = newIndex;
      update();
    }
  }
}