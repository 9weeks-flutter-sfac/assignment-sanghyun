import 'package:assignment2/model/meanings.dart';
import 'package:flutter/material.dart';

class MeaningCard extends StatelessWidget {
  const MeaningCard({super.key, required this.meaning});
  final Meanings meaning;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(meaning.partOfSpeech),
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: meaning.definitions.length,
              itemBuilder: (context, index) => ListTile(
                    title: Text(meaning.definitions[index].definition),
                  )),
        ],
      ),
    );
  }
}
