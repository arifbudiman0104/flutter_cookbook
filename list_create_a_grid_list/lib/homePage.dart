import 'package:flutter/material.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = 'Grid List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: GridView.count(
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
          padding: EdgeInsets.symmetric(
            horizontal: 5,
            vertical: 5,
          ),
          // Create a grid with 2 columns. If you change the scrollDirection to
          // horizontal, this produces 2 rows.
          crossAxisCount: 3,
          // Generate 100 widgets that display their index in the List.
          children: List.generate(100, (index) {
            return Container(
              color: Colors.blue,
              child: Center(
                child: Text(
                  'Item $index',
                  style: TextStyle(color: Colors.white),
                  //Theme.of(context).textTheme.headline5,
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
