import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:secret_cat_sdk/api/api.dart';

class secretView extends StatefulWidget {
  const secretView({super.key});

  @override
  State<secretView> createState() => _secretViewState();
}

class _secretViewState extends State<secretView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text('돌아가기'),
        ),
        extendBodyBehindAppBar: true,
        body: Stack(children: [
          ColorFiltered(
            colorFilter: ColorFilter.mode(
              Colors.black.withOpacity(0.3),
              BlendMode.dstIn,
            ),
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Image.asset(
                'assets/bamboo.jpg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Positioned(
              child: FutureBuilder(
            future: SecretCatApi.fetchSecrets(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                return PageView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (context, index) {
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FadeIn(
                          duration: Duration(seconds: 2),
                          child: Text(
                            snapshot.data![index].secret,
                            style: TextStyle(fontSize: 24),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FadeInLeft(child: Text('작성자 : ')),
                            FadeInRight(
                              child: Text(snapshot.data![index].author?.name
                                      .toString() ??
                                  '익명'),
                            ),
                          ],
                        )
                      ],
                    );
                  },
                );
              }
              return Text('기다리세요');
            },
          )),
        ]));
  }
}
