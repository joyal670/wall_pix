import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:wallpix/api/url.dart';
import 'package:wallpix/dashboard/home/tabs/latest.dart';
import 'package:wallpix/model/category_model.dart';
import 'package:wallpix/model/collection_details_response.dart';
import 'package:wallpix/model/like_photo_response.dart';

import '../model/photo_model.dart';
import 'package:gson/gson.dart';

class ApiClass {
  ApiClass._internal();
  static ApiClass instance = ApiClass._internal();
  factory() {
    return instance;
  }

  final dio = Dio();
  final url = URL();

  ApiClass() {
    dio.options = BaseOptions(
      baseUrl: url.baseUrl,
      responseType: ResponseType.json,
    );
  }

  Future<List<PhotoModel>> getProducts(String page) async {
    final result = await dio.get(url.baseUrl + url.photos, queryParameters: {
      'client_id': url.client_i,
      'page': page,
      'per_page': 10
    });
    List<PhotoModel> data = [];
    result.data.forEach(
      (element) {
        data.add(PhotoModel.fromJson(element));
      },
    );

    return data;
  }

  Future<List<CategoryModel>> getCategory(String page) async {
    final result = await dio.get(url.baseUrl + url.topics, queryParameters: {
      'client_id': url.client_i,
      'page': page,
      'per_page': 10
    });

    List<CategoryModel> data = [];
    result.data.forEach(
      (element) {
        data.add(CategoryModel.fromJson(element));
      },
    );

    return data;
  }

  Future<PhotoModel> getPhoto(String id) async {
    final result =
        await dio.get(url.baseUrl + url.photos + "/$id", queryParameters: {
      'client_id': url.client_i,
    });

    return PhotoModel.fromJson(result.data);
  }

  Future<LikePhotoResponse> likePhoto(String id) async {
    print(url.baseUrl + url.photos + "/$id/" + url.like);
    final result = await dio
        .get(url.baseUrl + url.photos + "/$id/" + url.like, queryParameters: {
      'client_id': url.client_i,
    });

    print(result);

    return LikePhotoResponse.fromJson(result.data);
  }

  Future<List<CollectionDetailsResponse>> collectionDetails(
      String id, String page) async {
    print('${url.baseUrl}${url.topics}/$id/${url.photos}');
    final result = await dio
        .get("${url.baseUrl}${url.topics}/$id/${url.photos}", queryParameters: {
      'client_id': url.client_i,
      'page': page,
      'per_page': 10
    });

    List<CollectionDetailsResponse> data = [];
    result.data.forEach(
      (element) {
        data.add(CollectionDetailsResponse.fromJson(element));
      },
    );
    print(data[0].urls!.full.toString());
    return data;
  }

  // Future<RegisterResponse?> registerUserApi(FormData formData) async {
  //   try {
  //     final result = await dio.post(url.registerEndpoint, data: formData);
  //     return RegisterResponse.fromJson(jsonDecode(result.data));
  //   } on DioError catch (e) {
  //     print(e);
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  // Future<LoginResponse?> loginUserApi(FormData formData) async {
  //   try {
  //     final result = await dio.post(url.loginEndpoint, data: formData);
  //     return LoginResponse.fromJson(jsonDecode(result.data));
  //   } on DioError catch (e) {
  //     print(e);
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  // getProducts() async {
  //   final result = await dio.get(url.productBaseUrl + url.productsEndpoint);
  //   final getProduct = GetProductResponse.fromJson(result.data);
  //   if (getProduct.data != null) {
  //     productNotifier.value.clear();
  //     productNotifier.value.addAll(getProduct.data!);
  //   } else {
  //     productNotifier.value.clear();
  //   }
  // }
}
