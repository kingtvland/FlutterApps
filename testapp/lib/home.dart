import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(70),
          child: Container(
            height: 140,
            width: 140,
            child: QrImage(
              gapless: true,
              version: QrVersions.auto,
              data: "Maruf",
              size: 200.0,
            ),
          ),
        ),
      ),
    );
  }
}
