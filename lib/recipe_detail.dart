import 'package:flutter/material.dart';
import 'recipe.dart';

class RecipeDetail extends StatefulWidget {
  final Recipe recipe;

  const RecipeDetail({
    Key? key,

    required this.recipe,
  }) : super(key: key);

  @override
  State<RecipeDetail> createState() {
    return _RecipeDetailState();
  }
}

class _RecipeDetailState extends State<RecipeDetail> {
  int _sliderVal = 1;

  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.recipe.label),
      ),
      backgroundColor: Color(0xDA01F450),
      // 2
      body: SafeArea(
        // 3
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            // 4
            SizedBox(
              height: 300,
              width: double.infinity,

              child: Image(
                image: AssetImage(widget.recipe.imageUrl),
              ),
            ),
            // 5
            const SizedBox(
              height: 4,
            ),
            // 6
            Padding(
              padding: EdgeInsets.all(60), //apply padding to all four sides
              child: Text(
                widget.recipe.text,style: const TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),




            // 7
          ],
        ),
      ),
    );
  }
}
