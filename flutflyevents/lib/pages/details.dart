import 'package:flutflyevents/text_section.dart';
import 'package:flutflyevents/title_section.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key, required this.title});
  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.
  final String title;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/images/black.webp',
          width: 600,
          height: 240,
          fit: BoxFit.cover,
        ),
        titleSection,
        textSection,
      ],
    );
  }
}
