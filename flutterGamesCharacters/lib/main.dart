import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'recipe.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter App Recipe Order',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter App Recipe Order'),
    );

  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title),),
      body: SafeArea(
        child:
            ListView.builder(
            itemCount: Recipe.samples.length,
            itemBuilder: (BuildContext context, int index)
            {
              return Image(image: AssetImage(Recipe.samples[index].imageUrl));
            },
        )

        )
    );


  }
  Widget buildRecipeCard(Recipe recipe) {
    return Card(
      child: Column(
        children: <Widget> [
          Image(image: AssetImage(recipe.imageUrl)),
          Text(recipe.label),
        ],
      ),
    );
  }

}
