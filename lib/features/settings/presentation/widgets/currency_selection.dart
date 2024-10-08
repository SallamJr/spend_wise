import 'package:flutter/material.dart';
import 'package:spend_wise/core/utils/app_colors.dart';

class CurrencySelection extends StatefulWidget {
  const CurrencySelection({super.key});

  @override
  CurrencySelectionState createState() => CurrencySelectionState();
}

class CurrencySelectionState extends State<CurrencySelection> {
  String selectedCurrency = 'EGP';

  final List<Map<String, String>> currencies = [
    {'name': 'Egypt', 'code': 'EGP'},
    {'name': 'United Kingdom', 'code': 'GBP'},
    {'name': 'United States', 'code': 'USD'},
    {'name': 'Indonesia', 'code': 'IDR'},
    {'name': 'Japan', 'code': 'JPY'},
    {'name': 'Russia', 'code': 'RUB'},
    {'name': 'Germany', 'code': 'EUR'},
    {'name': 'Korea', 'code': 'WON'},
  ];

  Widget currencyWidget(String name, String code) {
    return ListTile(
      title: Text(name,style: TextStyle(color: AppColors.primaryFonts, fontWeight: FontWeight.bold, fontSize: 18),),
      subtitle: Text('($code)',style: TextStyle(color: AppColors.primaryFonts, fontWeight: FontWeight.w400, fontSize: 12),),
      trailing: Radio(
        value: code,
        groupValue: selectedCurrency,
        activeColor: AppColors.pressedIcons,
        onChanged: (String? value) {
          setState(() {
            selectedCurrency = value!;
          });
        },
      ),
      onTap: () {
        setState(() {
          selectedCurrency = code;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: currencies.length,
        itemBuilder: (context, index) {
          final currency = currencies[index];
          return currencyWidget(currency['name']!, currency['code']!);
        },
      ),
    );
  }
}


