import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String De = 'De';
  String Para = 'Para';
  String DeSelecionado = "Reais";
  String ParaSelecionado = "Reais";
  String Resposta = "";

  Map<String, String> sigla = {
    "Reais": "BRL",
    "Bitcoin": "BTC",
    "Euro": "EUR",
    "Dólar": "USD",
  };

  double v1 = 0;
  double v2 = 0;

  TextEditingController n1Controller = TextEditingController();

  _recuperarConversao() async {
    if (n1Controller.text.length == null || n1Controller.text.length == 0)
      return;
    double moeda = 1.0;
    String url = 'https://economia.awesomeapi.com.br/json/last/$De-$Para';
    http.Response response = await http.get(Uri.parse(url));
    try {
      moeda = double.tryParse(json.decode(response.body)["$De$Para"]["ask"]) ?? 1.0;
    } catch(err) {
      moeda = 1.0;
    }
    double resultado = double.parse(n1Controller.text) * moeda;
    setState(() {
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
      title: Text("CONVERSOR DE MOEDAS",
          style: TextStyle(color: Colors.red, fontSize: 20.0)),
      centerTitle: true,
      backgroundColor: Colors.blue,
    );
  }

  _subTitulo() {
    return AppBar(
      title: Text("DÓLAR, REAL E EURO",
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
      value: DeSelecionado,
      items: <String>['De', 'Dólar', 'Reais', 'Euro', "Bitcoin"]
          .map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? moedaSelecionado) {
        setState(() {
          DeSelecionado = moedaSelecionado ?? "Reais";
          De = sigla[moedaSelecionado] ?? "BRL";
        });
      },
    );
  }

  _dropdownPara() {
    return DropdownButton<String>(
      value: ParaSelecionado,
      items: <String>['Para', 'Dólar', 'Reais', 'Euro', "Bitcoin"]
          .map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (String? moedaSelecionado) {
        setState(() {
          ParaSelecionado = moedaSelecionado ?? "Reais";
          Para = sigla[moedaSelecionado] ?? "BRL";
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
          onPressed: _recuperarConversao,
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
