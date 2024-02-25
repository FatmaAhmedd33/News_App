import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/classes/articles_madel.dart';

import 'news_title.dart';

class NewsListView extends StatelessWidget {
  final List<ArticlesModel> articles;

  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    //we will do condition to solve problem of white page untill load news
    return SliverList(
        delegate: SliverChildBuilderDelegate(
      childCount: articles.length,
      (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 22),
          child: NewsTitle(
            a1: articles[index],
          ),
        );
      },
    ));
  }
}
