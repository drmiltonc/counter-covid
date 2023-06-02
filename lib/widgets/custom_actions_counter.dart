import 'package:flutter/material.dart';

class CustomActionsCounter extends StatelessWidget {
  const CustomActionsCounter(
      {super.key, this.increment, this.decrement, this.reset});

  final VoidCallback? increment;
  final VoidCallback? decrement;
  final VoidCallback? reset;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        FloatingActionButton(
          onPressed: increment,
          child: const Icon(Icons.exposure_plus_1),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: FloatingActionButton(
            onPressed: reset,
            child: const Icon(Icons.exposure_zero),
          ),
        ),
        FloatingActionButton(
          onPressed: decrement,
          child: const Icon(Icons.exposure_minus_1),
        ),
      ],
    );
  }
}
