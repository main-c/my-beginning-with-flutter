import 'package:flutter/material.dart';
import 'package:recipe_app/data/models/recipes.dart';
import 'package:recipe_app/screens/recipes_detail.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: Recipe.samples.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                    onTap: (() => {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return RecipeDetail(recipe: Recipe.samples[index]);
                          }))
                        }),
                    child: builRecipeCar(Recipe.samples[index]));
              })),
    );
  }

  Widget builRecipeCar(Recipe recipe) {
    return Card(
        elevation: 2.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Image(
                image: AssetImage(recipe.imageUrl),
              ),
              const SizedBox(
                height: 14.0,
              ),
              Text(
                recipe.label,
                style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                    fontFamily: 'Palatino'),
              )
            ],
          ),
        ));
  }
}
