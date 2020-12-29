import 'package:flutter/material.dart';
import 'dart:math';

void main(){

  runApp( MaterialApp(
    title: "Frases do dia",
    home: Home(),
    debugShowCheckedModeBanner: false,

  ) );
  
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "Nenhum obstáculo é grande para quem desiste",
    "Depois do sacrifício vem a derrota",
    "A maior derrota é acreditar que é capaz",
    "Nunca se esqueça que você é limitado",
    "Desista hoje para não perder amanhã",
    "Pare de tentar e comece a desistir",
    "Quanto maior a sua luta, maior será a sua derrota",
    "Nada é impossível para Deus! Mas você não é Deus, então pode ser impossível para você",
    "O sacrifício de hoje é o fracasso de amanhã",
    "É só questão de tempo para dar tudo errado",
    "Nunca permita que uma mensagem motivacional estúpida alegre o seu dia de merda"
  ];

  var _fraseGerada = "Clique abaixo para gerar uma nova frase";

  void _gerarFrase(){
    var numeroSorteado = Random().nextInt(_frases.length);
    setState(() {
      _fraseGerada = _frases[numeroSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Frases do dia"),
        backgroundColor: Colors.green,
      ),

      body: Container(
        padding: EdgeInsets.all(16),
        /*decoration: BoxDecoration(
          border: Border.all(
            width: 3,
            color: Colors.amber
          )
        ),*/
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Image.asset("images/logo.png"),
            Text(
              _fraseGerada,
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontSize: 17,
                fontStyle: FontStyle.italic,
                color: Colors.black
              )
            ),
            RaisedButton(
              child: Text(
                  "Nova frase",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
              color: Colors.green,
              onPressed: _gerarFrase,
            )
          ],
        ),
      ),
    );
  }
}
