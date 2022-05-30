import '../douban/model/one_book_infor_entity.dart';
import 'package:myflutter01/service/http_request.dart';
import 'package:myflutter01/service/config.dart';

class BookshelfRequest {
  static Future<void> requestBooksList(int start) async {
    // 1.构建URL
    final booksURL = "/movie/top250?start=$start&count=${BookShelfConfig.bookCount}";

    // 2.发送网络请求获取结果
    final  result = await HttpRequest.request(booksURL);

    //final subjects = result[“subjects”];

    // 3.将Map转成Model
    // List<MovieItem> movies = [];
    // for (var sub in subjects) {
    //   movies.add(MovieItem.fromMap(sub));
    // }
    //
    // return movies;
  }
}