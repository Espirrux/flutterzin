import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //"Alicerce" da Pagina (sempre necessário, é base)!
      appBar: AppBar(
        //Gera Barra de Status e a AppBar dentro do APP!
        title: const Text('Hello World', 
        //Gera algum estilo para dentro do texto, ele vai dentro do parenteses do Text!
        style: TextStyle(
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
      body: const Center(child: Text('Texto'),), 
    );
  }
}
