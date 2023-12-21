import 'package:flutter/material.dart';
import 'package:flutterzin/models/felipe.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Felipe eu = Felipe('VNTC', 20, 18000.20);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //"Alicerce" da Pagina (sempre necessário, é base)!
      appBar: AppBar(
        //Gera Barra de Status e a AppBar dentro do APP!
        title: Text(eu.getName, 
        //Gera algum estilo para dentro do texto, ele vai dentro do parenteses do Text!
        style: const TextStyle(
          color: Colors.white, 
          fontSize: 30),), //Titulo
        backgroundColor: Colors.deepPurpleAccent, //Cor de Fundo da AppBar
        actions: const [
          //Actions são ações dentro do App, geralmente encontrados do lado direito do APP
          Center(
            child: Text('XXX'),
          ), //Center é um componente de Layout no qual centraliza um outro Widget
          Center(
            child: Text('YYY'),
          )
        ],
      ),
      drawer: const Drawer(), //Menu de Hamburguer para mais opções de Menus, etc... (Barra Lateral)
      body: Container(
        width: 400,
        height: 800,
        color: Colors.deepPurple,
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Teste'),
            Text('Teste'),
            Text('Teste'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Text Row'),
                SizedBox(width: 100,), //Serve para dar espaço entre objetos
                Text('Text Row'),
            ],),
          ],
        )
      )
    );
  }
}
