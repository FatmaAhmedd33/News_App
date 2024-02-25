import 'package:flutter/material.dart';
import 'package:news_app/classes/articles_madel.dart';

class NewsTitle extends StatelessWidget {
  const NewsTitle({super.key, required this.a1});

  final ArticlesModel a1;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Column(
          children: [
            Image.network(//if a1.image = null display this image
                a1.image ??
                    'https://st.depositphotos.com/1006899/3776/i/950/depositphotos_37765339-stock-photo-news.jpg'),
            const SizedBox(
              height: 5,
            ),
            Text(
              a1.title,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: const TextStyle(color: Colors.black, fontSize: 25),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              a1.subTitle ?? '',
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: const TextStyle(
                  color: Color.fromARGB(255, 113, 109, 109), fontSize: 18),
            ),
          ],
        ));
  }
}
