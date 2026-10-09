import 'package:app_ifacil/login_screen.dart';
import 'package:app_ifacil/pallete.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Ifacil',
      debugShowCheckedModeBanner: false,
      theme:ThemeData(fontFamily: 'Google',
        scaffoldBackgroundColor: Pallete.backgroundColor,
      ),
      home: LoginScreen()
    );
  }
}
