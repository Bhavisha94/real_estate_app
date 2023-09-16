import 'package:flutter/material.dart';

class BoardingScreen1 extends StatelessWidget {
  const BoardingScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/boarding1.png',
      width: MediaQuery.of(context).size.width,
      height: 507,
      fit: BoxFit.fill,
    );
  }
}

class BoardingScreen2 extends StatelessWidget {
  const BoardingScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/boarding2.png',
      width: MediaQuery.of(context).size.width,
      height: 507,
      fit: BoxFit.fill,
    );
  }
}

class BoardingScreen3 extends StatelessWidget {
  const BoardingScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/boarding3.png',
      width: MediaQuery.of(context).size.width,
      height: 507,
      fit: BoxFit.fill,
    );
  }
}
