import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/service/news_service.dart';
import '../classes/articles_madel.dart';
import 'news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
  var future;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    future = NewsService(Dio()).getGeneral();
  }

  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticlesModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: ErrorMassage(),
            );
          } else {
            return SliverToBoxAdapter(
              child: SizedBox(
                // to make the load indicator in middle of screen

                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                child: const Center(child: CircularProgressIndicator()),
              ),
            );
          }
        });
  }
}

class ErrorMassage extends StatelessWidget {
  const ErrorMassage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text("oops theres an error here");
  }
}
