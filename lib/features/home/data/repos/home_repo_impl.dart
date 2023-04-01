import 'package:booklyapp/core/utils/dio_helper.dart';
import 'package:booklyapp/features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/core/errors/failures.dart';
import 'package:booklyapp/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

class HomeRepoImpl implements HomeRepo {
  final DioHelper dioHelper;

  HomeRepoImpl(this.dioHelper);
  // Dio? dio;
  // HomeRepoImpl() {
  //   dio = Dio(
  //     BaseOptions(
  //       baseUrl: 'https://www.googleapis.com/books/v1/',
  //       receiveDataWhenStatusError: true,
  //       receiveTimeout: const Duration(seconds: 10),
  //       sendTimeout: const Duration(seconds: 10),
  //     ),
  //   );
  // }
  @override
  Future<Either<Failure, List<BookModel>>> fetchBestSellerBooks() async {
    try {
      var data = await dioHelper.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newst&q=subject:programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } on Exception catch (e) {
      debugPrint(e.toString());
      return left(ServerFauiler());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}
