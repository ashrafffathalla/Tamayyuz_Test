import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tamayyuz_test/modules/login/login_screen.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'layout/tamayyuz/tamayyuz_layout.dart';

Future<void> main()async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // DioHelper.init();
  //Widget? widget;
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.light,
      ));
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  //Widget? startWidget;
  MyApp(/*this.startWidget,*/{Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        GlobalCupertinoLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        Locale("ar"),
      ],
      locale: Locale("ar"),
      theme: ThemeData(
        appBarTheme:const AppBarTheme(),
      ),
      home: LoginScreen(),
    );
  }
}
