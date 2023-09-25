import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'package:jannat_e_islam/views/Namaz/NamazScreen.dart';
import 'package:jannat_e_islam/views/HomeScreen.dart';

void main() async{
    WidgetsFlutterBinding.ensureInitialized();
  // MobileAds.instance.initialize();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(themeMode: ThemeMode.dark,darkTheme: ThemeData.dark(),
      getPages: [
        GetPage(name: "/", page: ()=>MyHomePage()),
         
             GetPage(name: "/Namaz", page: ()=>NamazScreen())
      ],
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
initialRoute: "/",
    );
  }
}
