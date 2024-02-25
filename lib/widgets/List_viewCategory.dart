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
      text: 'Business',
    ),
    Model(
      image: 'assets/entertaiment.avif',
      text: 'Entertaiment',
    ),
    Model(
      image: 'assets/general.avif',
      text: 'General',
    ),
    Model(
      image: 'assets/health.avif',
      text: 'Health',
    ),
    Model(
      image: 'assets/sports.avif',
      text: 'Sports',
    ),
    Model(
      image: 'assets/science.avif',
      text: 'Science',
    ),
    Model(
      image: 'assets/technology.jpeg',
      text: 'Technology',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: categoryies.length,
          itemBuilder: (context, index) {
            return Cards(categoryies: categoryies[index]);
          }),
    );
  }
}
