import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:spend_wise/core/shared/widgets/custom_app_bar.dart';
import 'package:spend_wise/core/shared/widgets/custom_bottom_nav_bar.dart';
import 'package:spend_wise/core/utils/app_colors.dart';
import 'package:spend_wise/features/settings/presentation/widgets/custom_list_tile.dart';

class SettingsScreenBody extends StatelessWidget {
  const SettingsScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar:  const CustomBottomNavBar(),
      backgroundColor: AppColors.primary,
      body:  Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomAppBar(text: "Profile", onPressed: (){}),
              const SizedBox(height: 16),
              CircleAvatar(
                radius: 80,
                backgroundColor: AppColors.secondary,
                child: Icon(Icons.add_a_photo, size: 65, color: AppColors.primaryFonts),
              ),
              const SizedBox(height: 20),
              CustomListTile(text: "Account", onPressed: (){}, icon:   IconlyBold.profile),
              
               Divider(color: AppColors.unSelectedIcons,),
               CustomListTile(text: "Settings", onPressed: (){}, icon: IconlyBold.setting,),
             
               Divider(color: AppColors.unSelectedIcons,),
               CustomListTile(text: "Export Data", onPressed: (){}, icon:  IconlyBold.upload),
         
               Divider(color: AppColors.unSelectedIcons,),
               CustomListTile(text: "About", onPressed: (){}, icon: IconlyBold.infoSquare),
              
               Divider(color: AppColors.unSelectedIcons,),
              CustomListTile(text: 'Logout', icon: IconlyBold.logout,
               onPressed: (){},),
            ],
          ),
        ),
      ),
    );
  }
}

