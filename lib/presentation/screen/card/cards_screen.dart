import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CardsScreen extends StatelessWidget {
  static const String name = 'cards_screen';
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cards Screen")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: const Icon(Icons.arrow_back_ios_outlined),
      ),
      body: const _CardsWidget(),
    );
  }
}

class _CardsWidget extends StatelessWidget {
  const _CardsWidget();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.webhook),
                  title: Text('Hola como estas'),
                  subtitle: Text('Esta es mi primera prueba de tarjeta :D'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    const SizedBox(width: 8),
                    TextButton(child: const Text('Aceptar'), onPressed: () {}),
                  ],
                ),
              ],
            ),
          ),
          const Card(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Text('Soria Chavarin Card'),
            ),
          ),
        ],
      ),
    );
  }
}
