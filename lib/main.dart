import 'package:flutter/material.dart';
import 'package:vehicle/pages/menu.dart';

void main()
{
  runApp(vehicle());
}

class vehicle extends StatelessWidget {
  const vehicle({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:frontpage(),
    );
  }
}
