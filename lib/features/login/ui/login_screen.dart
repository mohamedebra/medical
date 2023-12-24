import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:medical/core/helper/spacing.dart';
import 'package:medical/core/theming/styles.dart';
import 'package:medical/core/wedgits/app_text_button.dart';
import 'package:medical/features/login/data/models/login_request_body.dart';
import 'package:medical/features/login/logic/login_cubit.dart';
import 'package:medical/features/login/ui/wedgits/aready_have_account_text.dart';
import 'package:medical/features/login/ui/wedgits/email_and_password.dart';
import 'package:medical/features/login/ui/wedgits/login_bloc_listener.dart';
import 'package:medical/features/login/ui/wedgits/temrs_and_conditions_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back',
                style: TextStyles.font24BlueBold,
              ),
              verticalSpace(8.h),
              Text(
                '''We're excited to have you back, can't wait to \nsee what you've been up to since you last \nlogged in.''',
                style: TextStyles.font14GrayRegular,
              ),
              verticalSpace(30.h),
              Column(
                children: [
                  const EmailAndPassword(),
                  verticalSpace(18),

                  Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text(
                      'Forgot Password?',
                      style: TextStyles.font13BlueRegular,
                    ),
                  ),
                  verticalSpace(40),
                  AppTextButton(
                    buttonText: "Login",
                    textStyle: TextStyles.font16WhiteSemiBold,
                    onPressed: () {
                      validateThenDoLogin(context);
                      },
                  ),
                  verticalSpace(16),
                  const TermsAndConditionsText(),
                  verticalSpace(60),
                  const AlreadyHaveAccountText(),
                  const LoginBlocListener(),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates(
        LoginRequestBody(
          email: context.read<LoginCubit>().emailController.text,
          password: context.read<LoginCubit>().passwordController.text,
        ),
      );
    }
  }
}
