import 'package:assignment2/page/mainPage.dart';
import 'package:flutter/material.dart';

TextEditingController controller = TextEditingController();

class MyTextField extends StatelessWidget {
  const MyTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controller,
        onSubmitted: (v) {
          readData(v);
        },
        decoration: InputDecoration(
            hintText: 'Search',
            suffixIcon: Icon(Icons.search),
            enabledBorder:
                OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white))),
      ),
    );
  }
}
