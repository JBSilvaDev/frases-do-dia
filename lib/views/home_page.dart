// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> frases = [
    'As pessoas costumam dizer que a motivação não dura sempre. Bem, nem o efeito do banho, por isso recomenda-se diariamente.',
    'A persistência é o caminho do êxito.',
    'Motivação é a arte de fazer as pessoas fazerem o que você quer que elas façam porque elas o querem fazer.',
    'Toda ação humana, quer se torne positiva ou negativa, precisa depender de motivação.',
    'No meio da dificuldade encontra-se a oportunidade.',
    'Lute. Acredite. Conquiste. Perca. Deseje. Espere. Alcance. Invada. Caia. Seja tudo o quiser ser, mas, acima de tudo, seja você sempre.',
    'Eu faço da dificuldade a minha motivação. A volta por cima vem na continuação.'
        'A verdadeira motivação vem de realização, desenvolvimento pessoal, satisfação no trabalho e reconhecimento.',
    'Pedras no caminho? Eu guardo todas. Um dia vou construir um castelo.',
    'É parte da cura o desejo de ser curado.',
    'Tudo o que um sonho precisa para ser realizado é alguém que acredite que ele possa ser realizado.',
    'O sucesso é ir de fracasso em fracasso sem perder o entusiasmo.',
    'Só se pode alcançar um grande êxito quando nos mantemos fiéis a nós mesmos.',
    'Nossa maior fraqueza está em desistir. O caminho mais certo de vencer é tentar mais uma vez.',
    'Lute com determinação, abrace a vida com paixão, perca com classe e vença com ousadia, porque o mundo pertence a quem se atreve e a vida é muito para ser insignificante.'
  ];
  var fraseGerada = ValueNotifier('Clique abaixo para gerar uma frase');

  void _gerarFrase() {
    int indexList = Random().nextInt(frases.length);

    fraseGerada.value = frases[indexList];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: const [
          Text('Frases do dia'),
        ]),
        backgroundColor: Colors.green,
      ),
      body: Container(
        width:
            double.infinity, // configura pra ocupar 100% do espaço disponivel
        padding: EdgeInsets.all(16),
        decoration:
            BoxDecoration(border: Border.all(width: 3, color: Colors.grey)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png'),
            Column(
              children: [
                Text(
                  'Creditos pelas frases:',
                  style: TextStyle(fontSize: 10, fontStyle: FontStyle.italic),
                ),
                Text(
                  'https://www.pensador.com/frases_motivacionais/',
                  style: TextStyle(fontSize: 10, fontStyle: FontStyle.italic),
                ),
              ],
            ),
            ValueListenableBuilder<String>(
              valueListenable: fraseGerada,
              builder: (_, value, __) => Text(
                value,
                style: TextStyle(
                    fontSize: 20,
                    fontStyle: FontStyle.italic,
                    color: Colors.black),
                textAlign: TextAlign.justify,
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.green),
              onPressed: _gerarFrase,
              child: Text(
                'Nova Frase',
                style: TextStyle(
                    fontSize: 17,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),

          ],
        ),
      ),
      
      bottomSheet: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          'Created by: JB Silva',
          style: TextStyle(fontStyle: FontStyle.italic),
        )
      ],
      ),
    );
  }
}
