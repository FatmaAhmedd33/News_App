import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/classes/articles_madel.dart';
import 'package:news_app/service/news_service.dart';

import 'news_title.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({
    super.key,
  });

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticlesModel> articles = [];
  bool isLoading = true; //the loading doesnt begin
  @override
  void initState() {
    super.initState();
    getNewsGeneral();
  }

  Future<void> getNewsGeneral() async {
    articles = await NewsService(Dio()).getGeneral();
    isLoading = false;//the loading end
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {//we will do condition to solve problem of white page untill load news
    return isLoading? const SliverToBoxAdapter(child: Center (child: CircularProgressIndicator())):  SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 22),
          child: News_Title(
            a1: articles[index],
          ),
        );
      },
    ));
  }
}
