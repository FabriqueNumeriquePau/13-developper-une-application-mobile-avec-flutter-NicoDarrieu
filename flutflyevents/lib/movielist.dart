import 'package:flutter/material.dart';

void main() {
  runApp(
    MovieList(
      items: List<String>.generate(10, (i) => 'Item $i'),
    ),
  );
}

class MovieList extends StatelessWidget {
  final List<String> items;

  const MovieList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    const title = 'Long List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView.builder(
          itemCount: items.length,
          prototypeItem: ListTile(
            title: Text(items.first),
          ),
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(items[index]),
            );
          },
        ),
      ),
    );
  }
}
