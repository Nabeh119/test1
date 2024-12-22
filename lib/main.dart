import 'package:flutter/material.dart';
import 'package:pro/pages/CheckOut.dart';
import 'package:pro/pages/Home2.dart';
import 'package:pro/provider/cart.dart';
import 'package:provider/provider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) {return Cart();},
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home2(),
      ),
    );
  }
}
