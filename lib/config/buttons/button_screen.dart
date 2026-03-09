import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonScreen extends StatelessWidget {
  static const String name = 'button_screen';
  const ButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Buttons Screen")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: const Icon(Icons.arrow_back_ios_outlined),
      ),
      body: const _ButtonWidget(),
    );
  }
}

class _ButtonWidget extends StatelessWidget {
  const _ButtonWidget();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text("Elevated Soria Chavarin Button"),
          ),
          const SizedBox(height: 10),
          OutlinedButton(
            onPressed: () {},
            child: const Text("Outlined Soria Chavarin"),
          ),
          const SizedBox(height: 10),
          TextButton(
            onPressed: () {},
            child: const Text("Text Soria Chavarin"),
          ),
        ],
      ),
    );
  }
}
