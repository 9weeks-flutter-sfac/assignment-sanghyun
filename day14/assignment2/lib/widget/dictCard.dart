import 'package:assignment2/model/dict.dart';
import 'package:assignment2/widget/meaningCard.dart';
import 'package:flutter/material.dart';

class DictCard extends StatelessWidget {
  const DictCard({
    super.key,
    required this.dict,
  });
  final Dict dict;

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          dict.word,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
        ),
        ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: dict.meanings.length,
            itemBuilder: (context, index) =>
                MeaningCard(meaning: dict.meanings[index]))
      ],
    ));
  }
}
