import 'package:flutter/material.dart';
import 'package:flutter_cat_app/cat_details_screen.dart';
import 'package:flutter_cat_app/model/cat.dart';


class CatCard extends StatelessWidget {
  final Cat cat;

  const CatCard({
    super.key,
    required this.cat
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return CatDetailsScreen(cat: cat);
        }));
      },
      child: Card(
        child: Column(
          children: [
            Expanded(
                child: Image.network(
                    width: double.infinity,
                    fit: BoxFit.cover,
                    cat.imageLink)
            ),
            Text(cat.name, style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold,color: Colors.deepOrange),)
          ],
        ),
      ),
    );
  }
}

