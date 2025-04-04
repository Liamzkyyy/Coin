import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CoinFlip(),
    );
  }
}

class CoinFlip extends StatefulWidget {
  const CoinFlip({super.key});

  @override
  _CoinFlipState createState() => _CoinFlipState();
}

class _CoinFlipState extends State<CoinFlip> {
  int coinSide = 0;

  void flipCoin() {
    setState(() {
      coinSide = Random().nextInt(2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      appBar: AppBar(title: const Text("Coin Flip App")),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              coinSide == 0
                  ? 'assets/images/heads.png'
                  : 'assets/images/tails.png',
              width: 150,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: flipCoin,
              child: const Text("Flip Coin"),
            ),
          ],
        ),
      ),
    );
  }
}
