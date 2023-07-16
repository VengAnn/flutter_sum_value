import 'package:flutter/material.dart';
import 'package:flutter_ui_sum_number/detailapp.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sum Application'),
      ),
      //
      body: DetailApp(),
    );
  }
}
