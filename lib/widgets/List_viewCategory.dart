import 'package:flutter/cupertino.dart';
import 'package:news_app/classes/card_model.dart';

import 'cards.dart';

class Category_list_view extends StatelessWidget {
  const Category_list_view({
    super.key,
  });
  final List<Model> categoryies = const [
    Model(
      image: 'assets/business.avif',
      text: 'business',
    ),
    Model(
      image: 'assets/entertaiment.avif',
      text: 'entertainment',
    ),
    Model(
      image: 'assets/general.avif',
      text: 'general',
    ),
    Model(
      image: 'assets/health.avif',
      text: 'health',
    ),
    Model(
      image: 'assets/sports.avif',
      text: 'sports',
    ),
    Model(
      image: 'assets/science.avif',
      text: 'science',
    ),
    Model(
      image: 'assets/technology.jpeg',
      text: 'technology',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categoryies.length,
          itemBuilder: (context, index) {
            return Cards(categoryies: categoryies[index]);
          }),
    );
  }
}
