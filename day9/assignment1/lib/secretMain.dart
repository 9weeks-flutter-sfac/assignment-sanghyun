import 'package:assignment1/authorsView.dart';
import 'package:assignment1/secretPush.dart';
import 'package:assignment1/secretView.dart';
import 'package:flutter/material.dart';

class secretMain extends StatelessWidget {
  const secretMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'assets/incognito.png',
            width: 100,
            height: 100,
            color: Colors.white54,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 16, 0, 36),
            child: Text(
              'Top Secret !',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.white54,
                  fontWeight: FontWeight.bold),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        var begin = const Offset(1.0, 0);
                        var end = Offset.zero;
                        var curve = Curves.ease;
                        var tween = Tween(
                          begin: begin,
                          end: end,
                        ).chain(
                          CurveTween(
                            curve: curve,
                          ),
                        );
                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      },
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          secretView()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white24,
                fixedSize: Size(196, 36),
              ),
              child: Text('비밀 보기')),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                        transitionsBuilder:
                            (context, animation, secondaryAnimation, child) {
                          var begin = const Offset(1.0, 0);
                          var end = Offset.zero;
                          var curve = Curves.ease;
                          var tween = Tween(
                            begin: begin,
                            end: end,
                          ).chain(
                            CurveTween(
                              curve: curve,
                            ),
                          );
                          return SlideTransition(
                            position: animation.drive(tween),
                            child: child,
                          );
                        },
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            authorsView()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white24,
                  fixedSize: Size(196, 36),
                ),
                child: Text('작성자들 보기')),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        var begin = const Offset(1.0, 0);
                        var end = Offset.zero;
                        var curve = Curves.ease;
                        var tween = Tween(
                          begin: begin,
                          end: end,
                        ).chain(
                          CurveTween(
                            curve: curve,
                          ),
                        );
                        return SlideTransition(
                          position: animation.drive(tween),
                          child: child,
                        );
                      },
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          secretPush()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white24,
                fixedSize: Size(196, 36),
              ),
              child: Text('비밀 공유')),
          SizedBox(
            height: 90,
          )
        ]),
      ),
    );
  }
}
