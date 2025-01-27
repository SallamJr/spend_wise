import 'package:flutter/material.dart';
import 'package:spend_wise/features/settings/presentation/widgets/change_notifications_language/change_notifications_language_body.dart';

class NotificationsLanguageScreen extends StatelessWidget {
  const NotificationsLanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: ChangeNotificationsLanguageBody(),
    );
  }
}