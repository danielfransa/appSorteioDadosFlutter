import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<int> facesDoDado = [1, 2, 3, 4, 5, 6];

  List<String> imagensDoDado = [
    'assets/images/one.png',
    'assets/images/one.png',
    'assets/images/two.png',
    'assets/images/three.png',
    'assets/images/four.png',
    'assets/images/five.png',
    'assets/images/six.png'
  ];

  int numeroSorteado = 1;

  int sortearNumero() {
    return facesDoDado[Random().nextInt(facesDoDado.length)];
  }

  void atualizarNumero() {
    setState(() {
      numeroSorteado = sortearNumero();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Sortear Numeros Dados'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
                height: 300,
                width: 300,
                child: Image.asset(imagensDoDado[numeroSorteado])),
            Text('Numero Sorteado foi: $numeroSorteado'),
            const SizedBox(
              height: 100,
            ),
            SizedBox(
              width: 200.0,
              height: 60.0,
              child: FloatingActionButton(
                onPressed: () => atualizarNumero(),
                child: const Text(
                  "Sortear",
                  style: TextStyle(fontSize: 22),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
