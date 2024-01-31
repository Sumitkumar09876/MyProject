import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:project/currency_convertor_cupertino_page.dart';
import 'package:project/currency_convertor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConvertor(),
    );
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurrencyConvertorCupertinoPage(),
    );
  }
}
