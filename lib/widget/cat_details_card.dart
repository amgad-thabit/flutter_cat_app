import 'package:flutter/cupertino.dart';
import 'package:flutter_cat_app/model/cat.dart';

class CatDetailsWidget extends StatelessWidget {
  final Cat cat;
  const CatDetailsWidget({super.key, required this.cat});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(cat.imageLink),
        Text(
          cat.name,
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
        ),
        Text("Origin : ${cat.origin}"),
        Text("MaxWeight : ${cat.maxWeight}"),
        Text("Men Weight : ${cat.minWeight}"),
        Text("Length : ${cat.length}"),
        Text("Intelligince : Unknown"),


      ],
    );
  }
}
