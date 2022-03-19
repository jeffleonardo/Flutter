import 'package:flutter/material.dart';
 
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
 
  @override
  _HomeState createState() => _HomeState();
}
 
class _HomeState extends State<Home> {

  int resultado = 0;

  String contador = "0";
 
  void somarPessoas() {
    setState(() {
      resultado += 1;
      contador = resultado.toString();
      
    });
  }

   void subtrairPessoas() {
    setState(() {

      if(resultado > 0){
        resultado -= 1; 
      }else{
        resultado = 0;
      }
      contador = resultado.toString();
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.green),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Contador de Pessoas"),
          centerTitle: true,
        ),
        body: _corpo(),
      ),

    );
  }


  _titulo() {
    return AppBar(
      title: Text("Contador de Pessoas"),
      centerTitle: true,
      backgroundColor: Colors.green,
    );
  }
 

  _corpo() {
    return Container(
      width: double.infinity,    
      child: Column(        
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
           Text(contador),
          _botaoSum(),
          _botaoSub(),   
        ],
      ),
      
    );
  }


  _botaoSum() {
    return Padding(
      padding: EdgeInsets.only(top: 30.0, bottom: 20.0),
      child: RaisedButton(
          onPressed: somarPessoas,
          child: Text("+",
              style: TextStyle(color: Colors.white, fontSize: 40.0)),
          color: Colors.blue,
        ),
      );
    
  }

    _botaoSub() {
    return Padding(
      padding: EdgeInsets.only(top: 30.0, bottom: 20.0),
      child: RaisedButton(
          onPressed: subtrairPessoas,
          child: Text("-",
          style: TextStyle(color: Colors.white, fontSize: 40.0)),
          color: Colors.blue,
        ),
      );    
  }
}