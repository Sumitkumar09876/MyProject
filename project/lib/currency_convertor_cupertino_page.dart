import 'package:flutter/cupertino.dart';

class CurrencyConvertorCupertinoPage extends StatefulWidget {
  const CurrencyConvertorCupertinoPage({super.key});

  @override
  State<CurrencyConvertorCupertinoPage> createState() => _CurrencyConvertorCupertinoPageState();
}

class _CurrencyConvertorCupertinoPageState extends State<CurrencyConvertorCupertinoPage> {

final TextEditingController textEditingController = TextEditingController();
  double result = 0;

  void convert() {
    setState(() {
      result = double.parse(textEditingController.text) * 83;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey3,
        middle: Text(
          'Currency Convertor',
          style: TextStyle(color: CupertinoColors.white),
        ),
      ),
      backgroundColor: CupertinoColors.systemGrey4,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'INR.${result !=0 ? result.toStringAsFixed(3): result.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),
              CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                ),
                placeholder: "Input amount in USD",
                prefix: const Icon(CupertinoIcons.money_dollar), 
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
              const SizedBox(height: 10),
              CupertinoButton(
                onPressed: convert,
                color: CupertinoColors.black,
                child: const Text("Convert"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}