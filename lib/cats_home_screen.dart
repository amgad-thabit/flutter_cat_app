// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_cat_app/main.dart';
import 'package:flutter_cat_app/widget/cat_card.dart';
// import 'package:flutter_cat_app/widget/cat_card.dart';

class  CatsHomeScreen extends StatelessWidget {
  const CatsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text("Type of cats"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.favorite, color: Colors.white,))],
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: cats.length,
        itemBuilder: (context, index){
          final cat = cats[index];
          return CatCard(cat: cat);
        }

      ),
    );
  }
}

