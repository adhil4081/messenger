import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Sec extends StatelessWidget {
  final String name;

  const Sec({super.key, required this.name});

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text(name) ),
        body: SafeArea(
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(name))));
  }
}
