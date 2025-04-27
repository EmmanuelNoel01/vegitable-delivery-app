import 'package:flutter/material.dart';
import 'package:vegetable_app/bottomnav.dart';
import 'package:vegetable_app/cartpage.dart';
import 'package:vegetable_app/orderorder.dart';
import 'package:vegetable_app/starter.dart';
import 'package:vegetable_app/trial.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: Barbershop());
  }
}
