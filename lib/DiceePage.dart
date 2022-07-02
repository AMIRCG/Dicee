import 'package:flutter/material.dart';
import 'dart:math';

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int randomNumnber() {
    return Random().nextInt(6) + 1;
  }

  int numberImageDiceLeft = 1;
  int numberImageDiceRight = 6;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SizedBox(
            height: size.height,
            width: size.width,
            child: Center(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          numberImageDiceLeft = randomNumnber();
                        });
                      },
                      child: Image(
                          image: AssetImage(
                              'images/dice$numberImageDiceLeft.png')),
                    ),
                  ),
                  const Padding(padding: EdgeInsets.only(left: 10)),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          numberImageDiceRight = randomNumnber();
                        });
                      },
                      child: Image(
                          image: AssetImage(
                              'images/dice$numberImageDiceRight.png')),
                    ),
                  ),
                ],
              ),
            )),
      ),
    );
  }
}
