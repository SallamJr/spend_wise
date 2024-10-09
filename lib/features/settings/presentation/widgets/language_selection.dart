import 'package:flutter/material.dart';
import 'package:spend_wise/core/utils/app_colors.dart';
import 'package:spend_wise/generated/l10n.dart';

class LanguageSelect extends StatefulWidget {
  const LanguageSelect({super.key});

  @override
  LanguageSelectState createState() => LanguageSelectState();
}

class LanguageSelectState extends State<LanguageSelect> {
  String selectedLanguage = '';
  List<Map<String, String>> languages = [];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Move the logic that depends on inherited widgets here
    selectedLanguage = S.of(context).englishCode;
    languages = [
      {'name': S.of(context).english, 'code': S.of(context).englishCode},
      {'name': S.of(context).arabic, 'code': S.of(context).arabicCode},
    ];
  }

  Widget languageWidget(String name, String code) {
    return ListTile(
      title: Text(
        name,
        style: TextStyle(
            color: AppColors.primaryFonts,
            fontWeight: FontWeight.bold,
            fontSize: 18),
      ),
      subtitle: Text(
        '($code)',
        style: TextStyle(
            color: AppColors.primaryFonts,
            fontWeight: FontWeight.w400,
            fontSize: 12),
      ),
      trailing: Radio(
        value: code,
        activeColor: AppColors.pressedIcons,
        groupValue: selectedLanguage,
        onChanged: (String? value) {
          setState(() {
            selectedLanguage = value!;
          });
        },
      ),
      onTap: () {
        setState(() {
          selectedLanguage = code;
        });
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
        final currency = languages[index];
        return languageWidget(currency['name']!, currency['code']!);
      },
    );
  }
  // @override
  // Widget build(BuildContext context) {
  //   return Expanded(
  //     child: ListView(
  //       children: languages.map((lang) {
  //         return languageWidget(lang['name']!, lang['code']!);
  //       }).toList(),
  //     ),
  //   );
  // }
}
