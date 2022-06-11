import 'package:flutter/material.dart';
import 'package:pdp_ui/pages/home_page.dart';
import 'package:pdp_ui/pages/login_ui_page.dart';
import 'package:pdp_ui/pages/shop_ui_page.dart';
import 'package:pdp_ui/pages/shop_ui_task_page.dart';
import 'package:pdp_ui/pages/sign_up_task_page.dart';
import 'package:pdp_ui/pages/spotify_task_page.dart';
import 'package:pdp_ui/pages/ui_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      routes: {
        UIPageTask.id: (context) => UIPageTask(),
        LogInPage.id: (context) => LogInPage(),
        SignUpTask.id: (context) => SignUpTask(),
        SpotifyTask.id: (context) => SpotifyTask(),
        ShopUi.id: (context) => ShopUi(),
        ShopUiTask.id: (context) => ShopUiTask(),
      },
    );
  }
}

