import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("버튼"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                // Material State
                //
                // hovered - 호버링 상태 (마우스 오버)
                // focused - 포커스 됐을 때 (텍스트 필드)
                // pressed - 눌렸을 때 (O)
                // dragged - 드래그 됐을 때
                // selected - 선택 됐을 때 (체크박스, 라디오 버튼)
                // scrollUnder - 다른 컴퍼넌트 밑으로 스크롤링 됐을 때
                // disabled - 비활성화 됐을 때 (O)
                // error - 에러상태
                backgroundColor: MaterialStateProperty.resolveWith(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.red;
                    } else if (states.contains(MaterialState.disabled)) {
                      return Colors.yellow;
                    }
                    return Colors.black;
                  },
                ),
                foregroundColor: MaterialStateProperty.resolveWith(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.pressed)) {
                      return Colors.white;
                    }
                    return Colors.red;
                  },
                ),
                padding: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return const EdgeInsets.all(100.0);
                  }
                  return const EdgeInsets.all(12.0);
                }),
              ),
              child: const Text("Button style"),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                // 메인 컬러
                primary: Colors.red,
                // 글자 및 애니메이션 컬러
                onPrimary: Colors.yellow,
                // 그림자 컬러
                shadowColor: Colors.green,
                // 3D 입체감 높이
                elevation: 10.0,
                // 글꼴 스타일
                textStyle: const TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20.0,
                ),
                padding: const EdgeInsets.all(32.0),
                side: const BorderSide(
                  color: Colors.yellow,
                  width: 2.0,
                ),
              ),
              child: const Text('ElevateButton'),
            ),
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                primary: Colors.green,
                backgroundColor: Colors.indigo,
                elevation: 10.0,
              ),
              child: const Text("OutlinedButton"),
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Colors.black,
              ),
              child: const Text('TextButton'),
            )
          ],
        ),
      ),
    );
  }
}
