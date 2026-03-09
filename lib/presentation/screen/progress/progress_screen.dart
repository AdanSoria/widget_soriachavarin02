import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const name = 'progress_screen';

  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Progress Indicators')),
      body: Center(
        child: Column(
          children: const [
            SizedBox(height: 20),
            Text('Progress Indicators Screen'),
            SizedBox(height: 10),
            CircularProgressIndicator(
              strokeAlign: 2,
              backgroundColor: Colors.black,
            ),
            SizedBox(height: 10),
            Text('Progress Indicators Controlado'),
            _ControlledProgressIndicator(),
          ],
        ),
      ),
    );
  }
}

class _ControlledProgressIndicator extends StatelessWidget {
  const _ControlledProgressIndicator();

  @override
  Widget build(BuildContext context) {
    return const _ProgressView();
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<double>(
      stream: Stream.periodic(const Duration(milliseconds: 300), (value) {
        return (value * 2) / 100;
      }).takeWhile((value) => value < 100),
      builder: (context, snapshot) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                value: snapshot.data ?? 0,
                color: Colors.black,
                strokeWidth: 2,
                backgroundColor: Colors.black12,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: LinearProgressIndicator(
                  value: snapshot.data ?? 0,
                  backgroundColor: Colors.black12,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
