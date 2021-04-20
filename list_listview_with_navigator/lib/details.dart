import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final int index;
  DetailPage(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('The detailspage $index'),
      ),
      body: Center(
        child: Text('The detail page $index'),
      ),
    );
  }
}
