import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spend_wise/core/controllers/localization_cubit.dart';
import 'package:spend_wise/core/controllers/localization_state.dart';
import 'package:spend_wise/generated/l10n.dart';

class LanguageSelection extends StatefulWidget {
  const LanguageSelection({super.key});

  @override
  LanguageSelectState createState() => LanguageSelectState();
}

class LanguageSelectState extends State<LanguageSelection> {
  List<Map<String, String>> languages = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    // Initialize languages list
    languages = [
      {
        'name': Localizely.of(context).english,
        'code': Localizely.of(context).englishCode
      },
      {
        'name': Localizely.of(context).arabic,
        'code': Localizely.of(context).arabicCode
      },
    ];
  }

  Widget languageWidget(String name, String code) {
    return BlocBuilder<LocalizationCubit, LocalizationState>(
      builder: (context, state) {
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
            activeColor: Theme.of(context).colorScheme.onPrimaryContainer,
            groupValue: state.locale.languageCode, // Use cubit's locale
            onChanged: (String? value) {
              if (value != null) {
                context
                    .read<LocalizationCubit>()
                    .changeLocale(Locale(value)); // Change the locale
              }
            },
          ),
          onTap: () {
            context
                .read<LocalizationCubit>()
                .changeLocale(Locale(code)); // Change on tap
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: languages.length,
      itemBuilder: (context, index) {
        final language = languages[index];
        return languageWidget(language['name']!, language['code']!);
      },
    );
  }
}
