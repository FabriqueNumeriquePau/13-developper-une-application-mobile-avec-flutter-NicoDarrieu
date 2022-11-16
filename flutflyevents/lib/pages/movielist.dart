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
    storeService.getFireMovies();
    return FutureBuilder(
        future: storeService.getFireMovies(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: storeService.listMovies.length,
              prototypeItem: ListTile(
                title: Text(storeService.listMovies[0]['titre']),
              ),
              itemBuilder: (context, index) {
                return ListTile(
                  leading:
                      Image.network(storeService.listMovies[index]['image']),
                  title: Text(storeService.listMovies[index]['titre']),
                  trailing: const Icon(Icons.arrow_forward_ios),
                );
              },
            );
          }
          return const Text('No data');
        });
  }
}
