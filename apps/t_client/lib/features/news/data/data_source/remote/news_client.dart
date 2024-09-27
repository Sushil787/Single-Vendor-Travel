import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:t_client/features/news/data/model/article_model.dart';
part 'news_client.g.dart';

/// News Client
@RestApi()
abstract class NewsClient {
  /// Api Clieent Constructor
  factory NewsClient(Dio dio) = _NewsClient;

  /// Get Articles
  @GET('')
  Future<ArticleResponse> getArticles();
  
}


