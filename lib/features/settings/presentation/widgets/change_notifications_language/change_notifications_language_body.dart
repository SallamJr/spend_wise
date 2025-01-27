import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spend_wise/features/settings/presentation/widgets/change_notifications_language/change_notifications_language_appBar.dart';

class ChangeNotificationsLanguageBody extends StatelessWidget {
  const ChangeNotificationsLanguageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(children: [
      ChangeLanguageNotificationsAppbar(onCancel: () { context.pop();}),
    ]);
  }
}