import 'package:assignment/dogs_sevice.dart';
import 'package:assignment/model.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: StreamBuilder<List<Dogs>>(
              stream: DogsService().getData(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  print(snapshot.connectionState);
                  return GridView.builder(
                      itemCount: snapshot.data!.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3),
                      itemBuilder: (context, index) {
                        Stack(
                          children: [
                            GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3),
                              itemBuilder: (context, index) =>
                                  CircularProgressIndicator(),
                            )
                          ],
                        );
                        print(snapshot.connectionState);
                        return InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              barrierDismissible: true,
                              builder: ((context) {
                                return AlertDialog(
                                  title: Column(
                                    children: [
                                      Image.network(
                                          snapshot.data![index].message),
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: ElevatedButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text("Close"),
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              }),
                            );
                          },
                          child: Image.network(
                            snapshot.data![index].message,
                            fit: BoxFit.cover,
                          ),
                        );
                      });
                }
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LinearProgressIndicator(),
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
