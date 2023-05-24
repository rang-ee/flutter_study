import 'dart:math';

import 'package:flutter/material.dart';
import 'package:statefulwidget_before/const/color.dart';

class RandomScreen extends StatefulWidget {
  const RandomScreen({Key? key}) : super(key: key);

  @override
  State<RandomScreen> createState() => _RandomScreenState();
}

class _RandomScreenState extends State<RandomScreen> {
  List<int> randomNumbers = [123, 456, 789];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: PRIMARY_COLOR,
      body: SafeArea(
        // bottom: false,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '랜덤숫자 생성기 ',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.settings,
                      color: RED_COLOR,
                    ),
                  )
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: randomNumbers
                      .map((e) => Row(
                            children: e
                                .toString()
                                .split('')
                                .map((x) => Image.asset(
                                      'asset/img/random/$x.png',
                                      height: 70.0,
                                      width: 50.0,
                                    ))
                                .toList(),
                          ))
                      .toList(),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: RED_COLOR,
                  ),
                  onPressed: () {
                    Random rand = Random();
                    rand.nextInt(10000);

                    List<int> list = [];
                    for (var i = 0; i < 3; i++) {
                      list.add(rand.nextInt(10000));
                    }

                    setState(() {
                      randomNumbers = list;
                    });
                  },
                  child: const Text('랜덤 뽑기!!!'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
