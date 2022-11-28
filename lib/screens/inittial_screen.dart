import 'package:flutter/material.dart';
import '../components/task.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Tarefas',
          ),
          leading: Container(),
        ),
        body: AnimatedOpacity(
          opacity: opacidade ? 1 : 0,
          duration: const Duration(milliseconds: 200),
          child: ListView(
            children: const [
              Task("Aprender ingles", "assets/images/usa.jpg", 4),
              Task("Aprender Japones", "assets/images/japan.jpg", 4),
              Task("Aprender Mandarim", "assets/images/china.jpg", 5),
              Task("Aprender Espanhol", "assets/images/spain.jpg", 2),
              Task("Aprender Portugues", "assets/images/pt.jpg", 1),
              Task("Aprender Alemão ", "assets/images/germany.jpg", 4),
              Task("Aprender Indonesio", "assets/images/id.jpg", 3),
              SizedBox(
                height: 200,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(
              () {
                opacidade = !opacidade;
              },
            );
          },
          child: const Icon(Icons.remove_red_eye),
        ),
      ),
    );
  }
}
