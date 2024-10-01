import 'package:flutter/material.dart';
import 'package:spend_wise/core/utils/app_colors.dart';

class CustomCard extends StatelessWidget {
  final String text;

  const CustomCard({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.primaryCards,
      margin: const EdgeInsets.all(16.0),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text, style: const TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold),),
             Row(
              children: [
                Icon(Icons.edit_document, color: AppColors.primaryButtons,),
                const SizedBox(width: 10.0),
                const Icon(Icons.delete, color: Colors.black,),
              ],
            ),
            
            
          ],
        ),
      ),
    );
  }
}
