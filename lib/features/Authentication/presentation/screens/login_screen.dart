import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spend_wise/core/helpers/enums.dart';
import 'package:spend_wise/features/Authentication/presentation/controllers/login_cubit.dart';
import 'package:spend_wise/features/Authentication/presentation/widgets/login_screen_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state.status == GenericStatus.success) {
          /*
if signin operation done do these steps :
1-show snackbar with success word 
2- fetch new data from the cubit
3- navigate to home screen

          */
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text('Success!')));
          context.read<LoginCubit>().login();
          
          // Navigator.push(context,
          //     MaterialPageRoute(builder: (context) => const HomeScreen()));
        } else if (state.status == GenericStatus.error) {
          ScaffoldMessenger.of(context)
              .showSnackBar(const SnackBar(content: Text('Error!')));
        }
      },
      builder: (context, state) {
        return const LoginScreenBody();
      },
    );
  }
}
