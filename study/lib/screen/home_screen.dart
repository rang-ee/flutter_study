import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final Color color;

  const HomeScreen({
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int number = 0;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          number ++;
        });
      },
      child: Container(
          width: 50.0,
          height: 50.0,
          color: widget.color,
          child: Center(
              child: Text(
            number.toString(),
          ))),
    );
  }
}
