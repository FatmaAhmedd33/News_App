import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';

class CardView extends StatelessWidget {
  const CardView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListViewBuilder(
            category: 'category',
          )
        ],
      ),
    );
  }
}
