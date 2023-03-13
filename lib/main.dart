import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stepper_2/screens/stepper/provider/stepper_provider.dart';
import 'package:stepper_2/screens/stepper/view/stepper_view.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => LogInP(),)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => LogIn(),
        },
      ),
    ),
  );
}