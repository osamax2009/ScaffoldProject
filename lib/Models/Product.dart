import 'package:flutter/foundation.dart';


class Product {
  String? id ;
  String? title;
  String? description;
  double? price ;
  String? imageUrl;
  bool  isFavoirit  ;
  Product({
   @required this.id,
    @required  this.title,
    @required   this.description,
    @required   this.price,
    @required    this.imageUrl,
    this.isFavoirit = false

  });


}