import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:paxpass_app/core/shared/widgets/dismiss_keyboard.dart';
import 'package:paxpass_app/core/theme/app_theme.dart';
import 'package:paxpass_app/features/screens/home_screen.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return DismissKeyboard(
      child: ScreenUtilInit(
        designSize: const Size(375, 812),
        builder: (context, _) =>
            MaterialApp(theme: AppTheme.lightTheme, debugShowCheckedModeBanner: false, home: HomeScreen()),
      ),
    );
  }
}
