import 'package:flutter/material.dart';
import 'package:row_and_column/const/colors.dart';

class CrossAxisAlignmentScreen extends StatelessWidget {
  const CrossAxisAlignmentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.black,
          // Row와 Column 모두 해보기
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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

