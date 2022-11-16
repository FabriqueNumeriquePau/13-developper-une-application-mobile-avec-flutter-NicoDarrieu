import 'package:flutflyevents/services/store-service.dart';
import 'package:flutter/material.dart';

class ListMovie extends StatefulWidget {
  const ListMovie({super.key, required this.title, required List items});
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  final String title;

  @override
  State<ListMovie> createState() => _MyListMovie();
}

class _MyListMovie extends State<ListMovie> {
  late final List<String> items;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: storeService.listMovies.length,
      prototypeItem: ListTile(
        title: Text(items.first),
      ),
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(items[index]),
        );
      },
    );
  }
}
