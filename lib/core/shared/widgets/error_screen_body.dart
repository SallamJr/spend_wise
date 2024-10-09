import 'package:flutter/material.dart';
import 'package:spend_wise/core/utils/app_colors.dart';
import 'package:spend_wise/core/utils/media_query_values.dart';
import 'package:spend_wise/generated/l10n.dart';

class ErrorWidget extends StatelessWidget {
  final VoidCallback? onPress;
  const ErrorWidget({super.key, this.onPress});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Icon(
            Icons.warning_amber_rounded,
            color: AppColors.primaryCards,
            size: 150,
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 12),
          child: Text(
            S.of(context).errorMsg,
            //AppLocalizations.of(context)!.translate('something_went_wrong')!,
            style: const TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
          ),
        ),
        Text(
          S.of(context).tryAgain,
          // AppLocalizations.of(context)!.translate('try_again')!,
          style: TextStyle(
              color: AppColors.primaryFonts,
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        Container(
          height: 55,
          width: context.width * 0.55,
          margin: const EdgeInsets.symmetric(vertical: 15),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.secondaryBackground,
                foregroundColor: Theme.of(context).primaryColor,
                elevation: 500,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50))),
            child: Text(
              S.of(context).errorScreen,
              // will be handle the localization ....
              //AppLocalizations.of(context)!.translate('reload_screen')!,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            onPressed: () {
              if (onPress != null) {
                onPress!();
              }
            },
          ),
        )
      ],
    );
  }
}
