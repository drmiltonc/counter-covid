import 'package:flutter/material.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget(
      {super.key,
      required this.counter,
      required this.textBody,
      required this.textResponse});

  final int counter;
  final String textBody;
  final String textResponse;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            textBody,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 60,
          ),
          Text(
            '$counter',
            style: const TextStyle(fontSize: 150, fontWeight: FontWeight.w100),
          ),
          Text(
            '$textResponse${counter == 1 ? '' : 's'}',
            style: const TextStyle(fontSize: 20),
          ),
          const SizedBox(height: 200),
        ],
      ),
    );
  }
}
