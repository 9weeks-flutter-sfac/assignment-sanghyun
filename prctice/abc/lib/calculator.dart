import 'package:flutter/material.dart';

// - TextField를 두 개 사용하여 변수에 저장합니다.
// - 사칙연산이 가능하도록 버튼을 4개 만듭니다. 각각의 버튼(+,-,*,/)를 누르면 해당 연산자에 맞는 결과값을 출력합니다.
// - 이 때, 결과값은 **다이얼로그(Dialog)**로 출력합니다.
// Dialog란, 앱에서 팝업창처럼 화면위에 화면을 띄우는것을 말합니다.
// 일반적으로 showDialog가 있고, AlertDialog를 주로 사용합니다.
// - 계산 결과를 result로 넣으면, 다이얼로그를 출력하는 예시코드가 제공됩니다.
// 해당 코드를 활용하여 결과를 화면에 출력하세요.

class calculator extends StatefulWidget {
  const calculator({super.key});

  @override
  State<calculator> createState() => _calculatorState();
}

class _calculatorState extends State<calculator> {
  var x = TextEditingController();
  var y = TextEditingController();

  showResultDialog(BuildContext context, var result) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 2,
            height: 150,
            child: Center(
                child: Text(
              "$result",
              style: const TextStyle(fontWeight: FontWeight.bold),
            )),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('사칙연산'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('X의 값은?'),
              SizedBox(
                width: 36,
              ),
              Container(
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: x,
                      decoration: InputDecoration(
                          hintText: 'x값을 입력하세요.', border: InputBorder.none),
                    ),
                  )),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Y의 값은?'),
              SizedBox(
                width: 36,
              ),
              Container(
                  width: 150,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: Colors.grey,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      controller: y,
                      decoration: InputDecoration(
                          hintText: 'y값을 입력하세요.', border: InputBorder.none),
                    ),
                  )),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ElevatedButton(
                onPressed: () {
                  showResultDialog(
                      context, int.parse(x.text) + int.parse(y.text));
                },
                child: Text('더하기의 결과 값은?')),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ElevatedButton(
                onPressed: () {
                  showResultDialog(
                      context, int.parse(x.text) * int.parse(y.text));
                },
                child: Text('곱하기의 결과 값은?')),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ElevatedButton(
                onPressed: () {
                  showResultDialog(
                      context, int.parse(x.text) - int.parse(y.text));
                },
                child: Text('빼기의 결과 값은?')),
          ),
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ElevatedButton(
                onPressed: () {
                  showResultDialog(
                      context, int.parse(x.text) / int.parse(y.text));
                },
                child: Text('나누기의 결과 값은?')),
          )
        ]),
      ),
    );
  }
}
