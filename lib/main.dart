import 'package:flutter/material.dart';
import 'package:flutter_cat_app/cat_details_screen.dart';
// import 'package:flutter_cat_app/screen/cat_details_screen.dart';
import 'package:flutter_cat_app/cats_home_screen.dart';
import 'package:flutter_cat_app/data/all_cats.dart';
import 'package:flutter_cat_app/model/cat.dart';

final cats = allCats.map<Cat>((jsonCat) => Cat.fromJson(jsonCat)).toList();

void main() {
  // final cats = allCats.map<Cat>((jsonCat) => Cat.fromJson(jsonCat)).toList();

  // final cats = <Welcome>[];
  // for (var cat in allCats){
  //   cats.add(Welcome.fromJson(cat));
  // }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CatsHomeScreen(),

    );
  }
}
