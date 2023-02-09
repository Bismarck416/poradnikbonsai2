import 'package:flutter/material.dart';

import 'recipe.dart';
import 'recipe_detail.dart';

void main() => runApp(const HomePageWidget());

class HomePageWidget extends StatelessWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  // 1
  @override
  Widget build(BuildContext context) {
    // 2
    final ThemeData theme = ThemeData();
    // 3
    return MaterialApp(
      // 4

      title: 'Poradnik Bonsai',
      // 5
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Color.fromARGB(255, 0, 128, 0),
          secondary: Colors.black,
        ),
      ),
      // 6
      home: const MyHomePage(title: 'Poradnik Bonsai'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    // 1
    return Scaffold(
      // 2
      key: scaffoldKey,
      backgroundColor: Color(0xDA01F450),

      appBar: AppBar(
        title: Center (child: Text(widget.title)),
      ),
      // 3



      body: Container(
        // 4
        child: ListView.builder(
          // 5
          itemCount: Recipe.samples.length,
          // 6
          itemBuilder: (BuildContext context, int index) {
            // 7
            return GestureDetector(
              // 8
              onTap: () {
                // 9
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      // 10
                      return RecipeDetail(recipe: Recipe.samples[index]);
                    },
                  ),
                );
              },
              // 11
              child: buildRecipeCard(Recipe.samples[index]),
            );
          },
        ),
      ),
    );
  }

  Widget buildRecipeCard(Recipe recipe) {
    return Card(
      // 1
      elevation: 2.0,
      // 2
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0)),
      // 3
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        // 4
        child: Column(
          children: <Widget>[
            Image(image: AssetImage(recipe.imageUrl)),
            // 5
            const SizedBox(
                height: 10.0,
                width: 10.0
            ),
            // 6

            Text(
              recipe.label,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
              ),
            )
          ],
        ),
      ),
    );
  }}
