import 'package:flutter/material.dart';
import 'package:news_app/classes/card_model.dart';
import 'package:news_app/screens/card_view.dart';

class Cards extends StatelessWidget {
  const Cards({super.key, required this.categoryies});
  final Model categoryies;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return  CardView(category: categoryies.text,);
        },),);

      },
      child: Container(
        margin: const EdgeInsets.only(right: 20),
        height: 100,
        width: 160,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
                image: AssetImage(
                  categoryies.image,
                ),
                fit: BoxFit.fill)),
        child: Center(
            child: Text(
          categoryies.text,
          style: const TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
        )),
      ),
    );
  }
}
