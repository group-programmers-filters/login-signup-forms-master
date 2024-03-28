import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_signup/firebase_options.dart';
import 'package:login_signup/screens/welcome_screen.dart';

import 'package:login_signup/theme/theme.dart';


import 'package:login_signup/view_modell/home_model_nactvar.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      debugShowCheckedModeBanner: false,
     
      title: 'Flutter Demo',
      theme: lightMode,
      initialRoute: WelcomeScreen.id,
      getPages: [
        GetPage(
          name: WelcomeScreen.id,
          page: () => WelcomeScreen(),
        ),
        GetPage(
          name: home_model_nactva.id,
          page: () => home_model_nactva(),
        ),
      ],
         
      
    
    );
  }
}
