import 'package:flutter/material.dart';

class MyFistWidget extends StatelessWidget {
  const MyFistWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              color: Colors.red,
              height: 100,
              width: 100,
            ),
            Container(
              color: Colors.green,
              height: 50,
              width: 50,
            )
          ],
        ),
        Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              color: Colors.green,
              height: 100,
              width: 100,
            ),
            Container(
              color: Colors.red,
              height: 50,
              width: 50,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(color: Colors.green, height: 50, width: 50),
            Container(
              color: Colors.red,
              height: 50,
              width: 50,
            ),
            Container(
              color: Colors.purple,
              height: 50,
              width: 50,
            ),
          ],
        ),
        Container(
          color: Colors.amber,
          height: 30,
          width: 300,
          child: const Text(
            "Diamante Amarelo",
            style: TextStyle(
              color: Colors.black,
              fontSize: 28,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        ElevatedButton(
          onPressed: () {
          },
          child: const Text('Aperte o Botão'),
        ),
      ],
    );
  }
}
