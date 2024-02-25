import 'package:dio/dio.dart';
import 'package:news_app/classes/articles_madel.dart';

class NewsService {
  final dio = Dio();

  NewsService(Dio dio);

  Future<List<ArticlesModel>> getGeneral() async {
    //make the datatype future bec. it an syn function
    try {
  final Response response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=010bc05e15394117a0c74fb6a0b6a736&category=general');
    dynamic jsonData = response.data;
  //now we want a specific news from api and we know the key word so will store it in variable
  // when we show the request we noticed the sheep od data like list in side it map key is strind and value dynamic
  List<dynamic> articles =
      jsonData['articles'] ;
  //when run this statment will give expection bec. it really dont know if it like this datatype or not
  // we have 2 way to solve this problem frist one change data type to List <dynamic>
  // 2nd one to force the compiler to consider the  jsonData['articles'] as the data type i choose
  // to really work 2nd one must be sure this datatype is correct
  List<ArticlesModel> articlesList = [];
  for (var article in articles) {
    ArticlesModel articlesModel = ArticlesModel(
        image: article['urlToImage'],
        title: article['title'],
        subTitle: article['description']);
  
    articlesList.add(articlesModel);

     
  }
  return articlesList;
} 
on Exception catch (e) {
  return [];
}
   
  }
}
