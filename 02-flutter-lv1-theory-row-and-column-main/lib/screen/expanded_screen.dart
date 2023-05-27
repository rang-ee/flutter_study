import 'package:flutter/material.dart';
import 'package:row_and_column/const/colors.dart';

class ExpandedScreen extends StatelessWidget {
  const ExpandedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black,
          // Row랑 Column 모두 구현
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.red,
                ),
              ),
              Expanded(
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  color: Colors.orange,
                ),
              ),
              Container(
                height: 50.0,
                width: 50.0,
                color: Colors.yellow,
              ),
              Container(
                height: 50.0,
                width: 50.0,
                color: Colors.green,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

