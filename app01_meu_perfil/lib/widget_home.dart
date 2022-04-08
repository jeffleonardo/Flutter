import 'package:flutter/material.dart';
 
class widget_home extends StatelessWidget {
  const widget_home({Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu Perfil"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.symmetric(),
        color: Colors.white30,
        child: Center(
          child: Text(
            "Nome: Jefferson Leonardo da Silva\n"
            "Formação: Ensino Médio Completo\n"
            "Profissão: Analista de Sistemas junior\n"
            "Cursando: 5º Ciclo em ADS\n"
            "GitHub: github.com/jeffleonardo",            
            style: TextStyle(
              fontSize: 18,
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
    );
  }
}
