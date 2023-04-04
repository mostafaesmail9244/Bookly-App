import 'package:booklyapp/core/utils/dio_helper.dart';
import 'package:booklyapp/features/home/data/models/book_model/book_model.dart';
import 'package:booklyapp/core/errors/failures.dart';
import 'package:booklyapp/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

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
    } catch (error) {
      if (error is DioError) {
        return left(ServerFauiler.fromDioError(error));
      }
      return left(ServerFauiler(error.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async {
    try {
      var data = await dioHelper.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }
      return right(books);
    } catch (error) {
      if (error is DioError) {
        return left(ServerFauiler.fromDioError(error));
      }
      return left(ServerFauiler(error.toString()));
    }
  }
}
