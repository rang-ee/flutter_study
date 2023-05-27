import 'package:flutter/material.dart';
import 'package:row_and_column/const/colors.dart';

class MainAxisSizeScreen extends StatelessWidget {
  const MainAxisSizeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: colors.map(
                  (e) => Container(
                color: e,
                height: 50.0,
                width: 50.0,
              ),
            ).toList(),
          ),
        ),
      ),
    );
  }
}

