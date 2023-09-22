import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key});

  int add(int numX, int numY) {
    return numX + numY;
  }

  int minus(int numX, int numY) {
    return numX - numY;
  }

  int multiplication(int numX, int numY) {
    return numX * numY;
  }

  double adddivision(int numX, int numY) {
    return numX / numY;
  }

  final TextEditingController numX = TextEditingController();
  final TextEditingController numY = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('사칙연산'),
        centerTitle: true,
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 0, 32),
              child: Text('x의 값은?'),
            ),
            SizedBox(
              width: 50,
            ),
            SizedBox(
              height: 80,
              width: 240,
              child: TextField(
                controller: numX,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                    hintText: 'x의 값을 입력하세요', border: OutlineInputBorder()),
              ),
            )
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 0, 0, 32),
              child: Text('y의 값은?'),
            ),
            SizedBox(
              width: 50,
            ),
            SizedBox(
              height: 80,
              width: 240,
              child: TextField(
                controller: numY,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                    hintText: 'y의 값을 입력하세요', border: OutlineInputBorder()),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: SizedBox(
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  showResultDialog(
                      context, add(int.parse(numX.text), int.parse(numY.text)));
                },
                child: Text('더하기의 결과값은?'),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: SizedBox(
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  int sum2 = multiplication(
                    int.tryParse(numX.text) ?? 0,
                    int.tryParse(numY.text) ?? 0,
                  );
                  showResultDialog(context, sum2.toString());
                },
                child: Text('곱하기의 결과값은?'),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: SizedBox(
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  int sum3 = minus(
                    int.tryParse(numX.text) ?? 0,
                    int.tryParse(numY.text) ?? 0,
                  );
                  showResultDialog(context, sum3.toString());
                },
                child: Text('빼기의 결과값은?'),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: SizedBox(
              height: 40,
              child: ElevatedButton(
                onPressed: () {
                  double sum4 = adddivision(
                    int.tryParse(numX.text) ?? 0,
                    int.tryParse(numY.text) ?? 0,
                  );
                  showResultDialog(context, sum4.toString());
                },
                child: Text('나누기의 결과값은?'),
              )),
        ),
      ]),
    );
  }
}

showResultDialog(BuildContext context, var result) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
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
