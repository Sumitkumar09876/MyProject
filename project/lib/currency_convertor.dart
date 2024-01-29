import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CurrencyConvertor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final boder = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.black,
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(60),
    );
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Currency Convertor",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextField(
                style: const TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
                decoration: InputDecoration(
                  hintText: 'Input number here in USD',
                  hintStyle: const TextStyle(fontSize: 20, color: Colors.black),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: boder,
                  enabledBorder: boder,
                ),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            TextButton(
              onPressed: () {
                if (kDebugMode) {
                  print('Button clicked');
                }
              },
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black),
                foregroundColor: MaterialStatePropertyAll(Colors.white),
                fixedSize: MaterialStatePropertyAll(Size(300, 5))
              ),
              child: const Text("Convert"),
            ),
          ],
        ),
      ),
    );
  }
}
