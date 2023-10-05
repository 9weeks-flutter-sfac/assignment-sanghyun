import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:secret_cat_sdk/api/api.dart';

class authorsView extends StatefulWidget {
  const authorsView({super.key});

  @override
  State<authorsView> createState() => _authorsViewState();
}

class _authorsViewState extends State<authorsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('돌아가기'),
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
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
              future: SecretCatApi.fetchAuthors(),
              builder: (context, snapshot) {
                if (snapshot.hasData)
                  return GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemCount: snapshot.data!.length,
                      itemBuilder: (BuildContext, index) {
                        return Column(
                          children: [
                            ShakeY(
                              from: 60,
                              duration: Duration(milliseconds: 2500),
                              child: Image.network(
                                  snapshot.data![index].avatar.toString()),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            ShakeY(
                              from: 60,
                              duration: Duration(milliseconds: 2500),
                              child: Text(
                                snapshot.data![index].name.toString(),
                                style: TextStyle(fontSize: 16),
                              ),
                            )
                          ],
                        );
                      });
                return LinearProgressIndicator();
              },
            ),
          )
        ],
      ),
    );
  }
}
