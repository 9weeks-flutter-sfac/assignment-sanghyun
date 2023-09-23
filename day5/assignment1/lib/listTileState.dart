import 'package:flutter/material.dart';

class listTileState extends StatefulWidget {
  const listTileState({super.key});

  @override
  State<listTileState> createState() => _listTileStateState();
}

class _listTileStateState extends State<listTileState> {
  bool isIcon = false;
  var sunnyIconRed = Icon(
    Icons.sunny,
    color: Colors.red,
  );
  // var sunnyIcon = Icon(Icons.sunny);
  // var SunnyIconRed = Icon(
  //   Icons.sunny,
  //   color: Colors.red,
  //   weight: 100,
  // );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              leading: sunnyIconRed,
              title: Text('Sun'),
              trailing: GestureDetector(
                child: Icon(Icons.arrow_right_outlined),
                onTap: () {},
              ),
            ),
            Icon(
              Icons.sunny,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
