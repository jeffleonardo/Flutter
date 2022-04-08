import 'package:flutter/material.dart';
 
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
 
  @override
  _HomeState createState() => _HomeState();
}
 
class _HomeState extends State<Home> {
  TextEditingController n1Controller = TextEditingController();
  TextEditingController n2Controller = TextEditingController();
 
  String infoResultado = "Informe os valores!";
 
  void _calcularVantagem() {
    setState(() {
      double n1 = double.parse(n1Controller.text);
      double n2 = double.parse(n2Controller.text);
  
      double resultado = n1 / n2;

      if(resultado > 0.7) infoResultado = 'A Gasolina é mais vantajosa!';
 
      if(resultado <= 0.7) infoResultado = 'O Alcool é mais vantajoso!';
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      backgroundColor: Colors.white,
      body: _corpo(),
    );
  }
 
  _titulo() {
    return AppBar(
      title: Text("Posto thurzin&jeff"),
      centerTitle: true,
      backgroundColor: Colors.blue,
    );
  }
 
  _corpo() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _foto(),
          _campo("Preço do alcool", n1Controller),
          _campo("Preço da gasolina", n2Controller),
          _botao(),
          _texto(infoResultado),
        ],
      ),
    );
  }
 
  _campo(labelTitulo, objController) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: labelTitulo, labelStyle: TextStyle(color: Colors.green)),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.green, fontSize: 25.0),
      controller: objController,
    );
  }
 
  _botao() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _calcularVantagem,
          child: Text("Calcular",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          color: Colors.blue,
        ),
      ),
    );
  }
 
  _texto(textoParaExibir) {
    return Text(
      textoParaExibir,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.red, fontSize: 25.0),
    );
  }

   _foto() {
    return Center(
      child: Image.network(
        'https://i.pinimg.com/736x/2d/bb/7b/2dbb7b16e8144b834dc5b24d2a9d9354.jpg',
        height: 150,
        width: 150,
      ),
    );
  }

}
