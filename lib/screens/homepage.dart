import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome to autoloop"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          child: const Text("This is autoloop"),
        ),
      ),
    );
  }
}
