import 'package:flutter/material.dart';
import 'package:spend_wise/generated/l10n.dart';

class CurrencySelection extends StatefulWidget {
  const CurrencySelection({super.key});

  @override
  CurrencySelectionState createState() => CurrencySelectionState();
}

class CurrencySelectionState extends State<CurrencySelection> {
  String selectedCurrency = '';
  List<Map<String, String>> currencies = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Move the logic that depends on inherited widgets here
    selectedCurrency = Localizely.of(context).egypt_code;
    currencies = [
      {
        'name': Localizely.of(context).egypt,
        'code': Localizely.of(context).egypt_code
      },
      {
        'name': Localizely.of(context).united_kingdom,
        'code': Localizely.of(context).united_kingdom_code
      },
      {
        'name': Localizely.of(context).united_states,
        'code': Localizely.of(context).united_states_code
      },
      {
        'name': Localizely.of(context).indonesia,
        'code': Localizely.of(context).indonesia_code
      },
      {
        'name': Localizely.of(context).japan,
        'code': Localizely.of(context).japan_code
      },
      {
        'name': Localizely.of(context).russia,
        'code': Localizely.of(context).russia_code
      },
      {
        'name': Localizely.of(context).germany,
        'code': Localizely.of(context).germany_code
      },
      {
        'name': Localizely.of(context).korea,
        'code': Localizely.of(context).korea_code
      },
    ];
  }

  Widget currencyWidget(String name, String code) {
    return ListTile(
      title: Text(
        name,
        style: TextStyle(
          color: Theme.of(context).colorScheme.onPrimary,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      subtitle: Text(
        '($code)',
        style: TextStyle(
          color: Theme.of(context).colorScheme.onPrimary,
          fontWeight: FontWeight.w400,
          fontSize: 12,
        ),
      ),
      trailing: Radio(
        value: code,
        groupValue: selectedCurrency,
        activeColor: Theme.of(context).colorScheme.onPrimaryContainer,
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
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: currencies.length,
      itemBuilder: (context, index) {
        final currency = currencies[index];
        return currencyWidget(currency['name']!, currency['code']!);
      },
    );
  }
}
