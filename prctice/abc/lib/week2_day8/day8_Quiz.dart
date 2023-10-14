import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

diogetdata() async {
  var dio = Dio();

  for (var i = 100; i <= 150; i++) {
    try {
      var res =
          await dio.post("https://sniperfactory.com/sfac/http_assignment_$i",
              options: Options(headers: {
                'user-agent': 'SniperFactoryBrowser',
                'authorization': 'Bearer ey-000000000',
              }));

      if (res.statusCode == 200) {
        return res.data;
      }
    } catch (e) {}
  }
}

//   for (var i = 100; i < 150; i++) {
//     try {
//       var res = await dio.post(
//         'https://sniperfactory.com/sfac/http_assignment_$i',
//         options: Options(
//           headers: {
//             'user-agent': 'SniperFactoryBrowser',
//             'authorization': 'Bearer ey-12312422314',
//           },
//         ),
//       );
//       print(res.data);
//     } catch (e) {
//       print('error: $e');
//     }
//   }
// }

class day8_Quiz extends StatefulWidget {
  const day8_Quiz({super.key});

  @override
  State<day8_Quiz> createState() => _day8_QuizState();
}

class _day8_QuizState extends State<day8_Quiz> {
  @override
  Widget build(BuildContext context) {
    diogetdata();
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            FutureBuilder(
                future: diogetdata(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    return Text(snapshot.data.toString());
                  }

                  return Text('d');
                }),
          ],
        ),
      ),
    );
  }
}
