

import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String De = 'De';
  String Para = 'Para';
  String Resposta = "";
  double resultado = 0;

  double v1 = 0;
  double v2 = 0;

  TextEditingController n1Controller = TextEditingController();

  void _Texto() {
    v1 = double.parse(n1Controller.text);

    setState(() {
      if (De == 'Dólar' && Para == 'Reais') resultado = v1 * 4.66;
      if (De == 'Dólar' && Para == 'Euros') resultado = v1 * 0.91;
      if (De == 'Dólar' && Para == 'Dólar') resultado = v1;
      if (De == 'Reais' && Para == 'Dólar') resultado = v1 * 0.21;
      if (De == 'Reais' && Para == 'Euros') resultado = v1 * 0.19;
      if (De == 'Reais' && Para == 'Reais') resultado = v1;
      if (De == 'Euros' && Para == 'Reais') resultado = v1 * 5.15;
      if (De == 'Euros' && Para == 'Dólar') resultado = v1 * 1.10;
      if (De == 'Euros' && Para == 'Euros') resultado = v1;
      Resposta = "RESULTADO: $resultado";
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
      title: Text(
        "CONVERSOR DE MOEDAS",
        style: TextStyle(color: Colors.red, fontSize: 20.0)),
      centerTitle: true,
      backgroundColor: Colors.blue,
    );
  }
    _subTitulo() {
    return AppBar(
      title: Text(
        "DÓLAR, REAL E EURO",
        style: TextStyle(color: Colors.red, fontSize: 20.0)),
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
          _subTitulo(),
          _campo("Valor:", n1Controller),
          _dropdownDe(),
          _dropdownPara(),
          _botao(),
          _Resposta(Resposta),
        ],
      ),
    );
  }

  _campo(labelTitulo, objController) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: labelTitulo, labelStyle: TextStyle(color: Colors.black)),
      textAlign: TextAlign.left,
      style: TextStyle(color: Colors.black, fontSize: 20.0),
      controller: objController,
    );
  }

  _dropdownDe() {
    return DropdownButton<String>(
      value: De,
      items: <String>['De', 'Dólar', 'Reais', 'Euros'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? moedaSelecionado) {
        setState(() {
          De = moedaSelecionado!;
        });
      },
    );
  }

  _dropdownPara() {
    return DropdownButton<String>(
      value: Para,
      items: <String>['Para', 'Dólar', 'Reais', 'Euros'].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? moedaSelecionado) {
        setState(() {
          Para = moedaSelecionado!;
        });
      },
    );
  }

  _botao() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _Texto,
          child: Text("CONVERTER",
              style: TextStyle(color: Colors.black, fontSize: 20.0)),
          color: Colors.blue,
        ),
      ),
    );
  }

  _Resposta(Resposta) {
    return Text(
      Resposta,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.green, fontSize: 25.0),
    );
  }
}