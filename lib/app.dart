import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_app_1/features/authentication/screens/onBoarding/onboarding.dart';
import 'package:flutter_app_1/utils/theme/theme.dart';

//--- Use this class to setup themes, initial bindings, local storage, splash screen, firebase, authentication, etc.
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,  // Aquí quitas la etiqueta de debug
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
