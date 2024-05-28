import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management/Providers/shopping_cart.dart';
import 'package:state_management/screens/second_screen.dart';
import 'package:state_management/Providers/counter_provider.dart';
import 'package:state_management/screens/home.dart';

void main() {
  runApp( MultiProvider(
  providers: [
    ChangeNotifierProvider(create: (_)=>Counter()),
    ChangeNotifierProvider(create: (_)=>ShoppingCart()),
   ],
  child: MyApp(),
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(title: 'App Home Page'),
        '/second': (context) => SecondScreen(title: 'Second Screen')
      },
    );
  }
}
