import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical/core/theming/styles.dart';

class DocImageAndText extends StatelessWidget {
  const DocImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(

      children: [
        SvgPicture.asset('asstes/svgs/doc_doc_logo.svg'),
        Container(
          foregroundDecoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.white,
              Colors.white.withOpacity(0),
            ],
            begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: const [0.14, 0.4]
            ),
          ),
          child: Image.asset('asstes/images/onboarding_doctor.png'),
        ),
        Positioned(
          bottom: 30,
            left: 0,
            right: 0,
            child: Text('Best Doctor\nAppointment App',
              style: TextStyles.font32BlueBold,
              textAlign: TextAlign.center,
            ),

        )

      ],
    );
  }
}
