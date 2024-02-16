import 'package:flutter/material.dart';
import 'package:flutter_cat_app/model/cat.dart';
import 'package:flutter_cat_app/widget/cat_details_card.dart';
// import 'package:flutter_cat_app/widget/cat_details_card.dart';


class CatDetailsScreen extends StatelessWidget {
  final Cat cat;
  const CatDetailsScreen({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cat.name),
      backgroundColor: Colors.deepPurple,),
      body: CatDetailsWidget(cat: cat)

    );
  }
}
