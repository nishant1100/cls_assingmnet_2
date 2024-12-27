import 'package:assingment2/cubit/arithmetic_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ArithmeticCubitView extends StatelessWidget {
  const ArithmeticCubitView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController num1Controller = TextEditingController();
    final TextEditingController num2Controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Arithmetic Cubit'),
            const Text('Nishant Shrestha Assignment2',
            )
          ],
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: num1Controller,
              decoration: const InputDecoration(
                labelText: 'First Number',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 16),
            TextField(
              controller: num2Controller,
              decoration: const InputDecoration(
                labelText: 'Second Number',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 24),
            BlocBuilder<ArithmeticCubit, int>(
              builder: (context, result) {
                return Text(
                  'Result: $result',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
            const SizedBox(height: 24),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                ElevatedButton(
                  onPressed: () {
                    final num1 = int.tryParse(num1Controller.text) ?? 0;
                    final num2 = int.tryParse(num2Controller.text) ?? 0;
                    context.read<ArithmeticCubit>().add(num1, num2);
                  },
                  child: const Text('Add'),
                ),
                ElevatedButton(
                  onPressed: () {
                    final num1 = int.tryParse(num1Controller.text) ?? 0;
                    final num2 = int.tryParse(num2Controller.text) ?? 0;
                    context.read<ArithmeticCubit>().subtract(num1, num2);
                  },
                  child: const Text('Subtract'),
                ),
                ElevatedButton(
                  onPressed: () {
                    final num1 = int.tryParse(num1Controller.text) ?? 0;
                    final num2 = int.tryParse(num2Controller.text) ?? 0;
                    context.read<ArithmeticCubit>().multiply(num1, num2);
                  },
                  child: const Text('Multiply'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}