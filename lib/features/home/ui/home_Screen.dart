import 'package:flutter/material.dart';
import 'package:medical/core/theming/styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body:  Center(
        child: Text('HomeScreen',style: TextStyles.font24BlueBold,),
      ),
    );
  }
}
