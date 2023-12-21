import 'package:flutter/material.dart';
import 'package:medical/core/helper/extensions.dart';
import 'package:medical/core/routing/routes.dart';
import 'package:medical/core/theming/colors.dart';
import 'package:medical/core/theming/styles.dart';

class GetStaredBottom extends StatelessWidget {
  const GetStaredBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: (){
          context.pushNamed(Routes.loginScreen);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(ColorsManager.mainBlue),
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          minimumSize: const MaterialStatePropertyAll( Size(double.infinity,52)),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16)
            )
          ),
        ),
        child: Text('Get Started',
          style: TextStyles.font16WhiteSemiBold,)
    );
  }
}
