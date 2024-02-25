import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';
import '../widgets/List_viewCategory.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'News',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.black),
              ),
              Text(
                'Cloud',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Colors.orange),
              ),
            ],
          ),
        ),
        body: const CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: (Category_list_view())),
            SliverToBoxAdapter(
                child: (SizedBox(
              height: 10,
            ))),
             NewsListViewBuilder()
          ],
        )

        //Column(
        // children: [
        //     Category_list_view(),SizedBox(height: 10,), Expanded(child: NewsListView())
        //  ],
        //
        // )
        );
  }
}
