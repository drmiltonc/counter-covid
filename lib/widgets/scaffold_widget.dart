import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/counter_provider.dart';
import 'widgets.dart';


class MyScaffold extends ConsumerWidget {
  const MyScaffold({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int counter = ref.watch(counterProvider);
    final increment = ref.watch(counterProvider.notifier).increment;
    final decrement = ref.watch(counterProvider.notifier).decrement;
    final reset = ref.watch(counterProvider.notifier).reset;

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size(double.infinity, 80),
        child: MyAppBar(text: textAppBar),
      ),
      body: BodyWidget(
        counter: counter,
        textBody: textBody,
        textResponse: textResponse,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: CustomActionsCounter(
        increment: increment,
        decrement: counter == 0 ? reset : decrement,
        reset: reset,
      ),
    );
  }
}