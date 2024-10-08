import 'package:flutter/material.dart';
import 'package:spend_wise/core/utils/app_colors.dart';

class LanguageSelect extends StatefulWidget {
  const LanguageSelect({super.key});

  @override
  LanguageSelectState createState() => LanguageSelectState();
}
class LanguageSelectState extends State<LanguageSelect> {
  String selectedLanguage = 'EN';

  final List<Map<String, String>> languages = [
    {'name': 'English', 'code': 'EN'},
    {'name': 'Arabic', 'code': 'AR'},
    // {'name': 'Indonesian', 'code': 'ID'},
    // {'name': 'Dutch', 'code': 'NL'},
    // {'name': 'Chinese', 'code': 'ZH'},
    // {'name': 'French', 'code': 'FR'},
    // {'name': 'German', 'code': 'DE'},
    // {'name': 'Italian', 'code': 'IT'},
    // {'name': 'Portuguese', 'code': 'PT'},
    // {'name': 'Russian', 'code': 'RU'},
    // {'name': 'Spanish', 'code': 'ES'},
  ];

  Widget languageWidget(String name, String code) {
    return ListTile(
      title: Text(name,style: TextStyle(color: AppColors.primaryFonts, fontWeight: FontWeight.bold, fontSize: 18),),
      subtitle: Text('($code)',style: TextStyle(color: AppColors.primaryFonts, fontWeight: FontWeight.w400, fontSize: 12),),
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
    return Expanded(
      child: ListView(
          children: languages.map((lang) {
            return languageWidget(lang['name']!, lang['code']!);
          }).toList(),
        ),
    ); 
  }
}