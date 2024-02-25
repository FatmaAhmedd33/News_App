import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/classes/articles_madel.dart';
import 'package:news_app/service/news_service.dart';

import 'news_list_view.dart';


class NewsListViewBuilder extends StatelessWidget {
  const NewsListViewBuilder({super.key});

  /*List<ArticlesModel> articles = [];
  bool isLoading = true; //the loading doesnt begin
  @override
  void initState() {
    super.initState();
    getNewsGeneral();
  }

  Future<void> getNewsGeneral() async {
    articles = await NewsService(Dio()).getGeneral();
    isLoading = false; //the loading end
    setState(() {});
  }*/

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: NewsService(Dio()).getGeneral(),
        builder: (context, snapshot) 
        {
         return NewsListView(
            articles: snapshot.data ?? [],
          );
        },);

    /*isLoading
        ? SliverToBoxAdapter(
            child: Container(
                // to make the load indicator in middle of screen

                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                child: const Center(child: CircularProgressIndicator())),
          )
        : articles.isNotEmpty
            ? NewsListView(
                articles: articles,
              )
            : const SliverToBoxAdapter(
                child: Text("oops theres an error here"),
              );*/
  }
}
