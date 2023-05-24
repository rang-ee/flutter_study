import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Pageview extends StatefulWidget {
  const Pageview({Key? key}) : super(key: key);

  @override
  State<Pageview> createState() => _PageviewState();
}

class _PageviewState extends State<Pageview> {
  PageController controller = PageController(
    initialPage: 0
  );

  Timer? timer;

  @override
  void initState() {
    // TODO: implement initSt
    timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      int current = controller.page!.toInt();
      int next = current + 1;

      if(next > 4){
        next = 0;
      }

      controller.animateToPage(next, duration: const Duration(milliseconds: 400), curve: Curves.linear);
    });
  }

  @override
  void dispose() {
    if(timer != null) timer!.cancel();

    controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return Scaffold(
        body: PageView(
          controller: controller,
            children: [1,2,3,4,5].map((idx) => Image.asset('asset/img/image_$idx.jpeg', fit:BoxFit.cover),)
                .toList()
            )
    );
  }
}
