// To parse this JSON data, do////     final productModel = productModelFromJson(jsonString);import 'package:get/get.dart';import 'package:meta/meta.dart';import 'dart:convert';List<ProductModel> productModelFromJson(String str) => List<ProductModel>.from(    json.decode(str).map((x) => ProductModel.fromJson(x)));String productModelToJson(List<ProductModel> data) =>    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));class ProductModel {  int? id;  String? title;  String? banner;  String? description;  Category? category;  List<Colors2>? colors;  int? price;  bool? isAvailable;  bool? showHide;  bool? isFeatured;  bool? isFav;  List<ProductImage>? productImage;  bool? inCart;  bool? delete;  int? quantity;  ProductModel(      {this.id,        this.title,        this.banner,        this.description,        this.category,        this.colors,        this.price,        this.isAvailable,        this.showHide,        this.isFeatured,        this.isFav,        this.inCart,        this.delete,        this.productImage,        this.quantity      });  ProductModel.fromJson(Map<String, dynamic> json) {    id = json['id'];    title = json['title'];    banner = json['banner'];    description = json['description'];    category = json['category'] != null        ? new Category.fromJson(json['category'])        : null;    if (json['colors'] != null) {      colors = <Colors2>[];      json['colors'].forEach((v) {        colors!.add(new Colors2.fromJson(v));      });    }    price = json['price'];    isAvailable = json['is_available'];    showHide = json['show_hide'];    isFeatured = json['is_featured'];    isFav = json['is_fav'];    if (json['product_image'] != null) {      productImage = <ProductImage>[];      json['product_image'].forEach((v) {        productImage!.add(new ProductImage.fromJson(v));      });    }  }  Map<String, dynamic> toJson() {    final Map<String, dynamic> data = new Map<String, dynamic>();    data['id'] = this.id;    data['title'] = this.title;    data['banner'] = this.banner;    data['description'] = this.description;    if (this.category != null) {      data['category'] = this.category!.toJson();    }    if (this.colors != null) {      data['colors'] = this.colors!.map((v) => v.toJson()).toList();    }    data['price'] = this.price;    data['is_available'] = this.isAvailable;    data['show_hide'] = this.showHide;    data['is_featured'] = this.isFeatured;    data['is_fav'] = this.isFav;    if (this.productImage != null) {      data['product_image'] =          this.productImage!.map((v) => v.toJson()).toList();    }    return data;  }}class Category {  String? title;  Category({this.title});  Category.fromJson(Map<String, dynamic> json) {    title = json['title'];  }  Map<String, dynamic> toJson() {    final Map<String, dynamic> data = new Map<String, dynamic>();    data['title'] = this.title;    return data;  }}class Colors2 {  String? colorCode;  Colors2({this.colorCode});  Colors2.fromJson(Map<String, dynamic> json) {    colorCode = json['color_code'];  }  Map<String, dynamic> toJson() {    final Map<String, dynamic> data = new Map<String, dynamic>();    data['color_code'] = this.colorCode;    return data;  }}class ProductImage {  String? image;  ProductImage({this.image});  ProductImage.fromJson(Map<String, dynamic> json) {    image = json['image'];  }  Map<String, dynamic> toJson() {    final Map<String, dynamic> data = new Map<String, dynamic>();    data['image'] = this.image;    return data;  }}class Banners {  Banners();  factory Banners.fromJson(Map<String, dynamic> json) => Banners();}