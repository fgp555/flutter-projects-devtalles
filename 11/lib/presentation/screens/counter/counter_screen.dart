import 'package:dev/presentation/providers/counter_provider.dart';
import 'package:dev/presentation/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterScreen extends ConsumerWidget {
  static const name = 'counter_screen';

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int clickCounter = ref.watch(counterProvider);
    final bool isDarkmode = ref.watch(isDarkmodeProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Screen"),
        actions: [
          IconButton(
            onPressed: () {
              ref.read(isDarkmodeProvider.notifier).update((state) => !state);
            },
            icon: Icon(
              isDarkmode ? Icons.light_mode_outlined : Icons.dark_mode_outlined,
            ),
          ),
        ],
      ),

      body: Center(
        child: Text(
          "Valor: $clickCounter",
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).state++;
          // ref.read(counterProvider.notifier).update((state) => state + 1);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
