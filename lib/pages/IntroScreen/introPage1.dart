import 'package:flutter/material.dart';

class introPage1 extends StatelessWidget {
  const introPage1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.yellow,
        body: Column(
          children: [
            Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 90,
                  ),
                  Container(
                    child: Image.asset(
                      'assets/image/calendario.png',
                      width: 350,
                      height: 350,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Este es una app de agendas de citas',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
