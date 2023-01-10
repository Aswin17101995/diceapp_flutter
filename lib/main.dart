import 'package:flutter/material.dart';
import "dart:math";
void main() {
  runApp(MaterialApp(
    home:Scaffold(
      appBar: AppBar(title: Text("Lets Roll"),
      backgroundColor: Colors.red[900],
      ),
      backgroundColor:Colors.redAccent,
      body: SafeArea(
        child:Dice()
      ),
    )
  ));
}

class Dice extends StatefulWidget {
  const Dice({Key? key}) : super(key: key);

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  var dicenumberl = 3;
  var dicenumberr = 2;
  void pressed() {
        setState(() {
          dicenumberl = Random().nextInt(6) + 1;
        });

      setState(() {
        dicenumberr = Random().nextInt(6) + 1;
      });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[ Row(
        children: [
          Expanded(
            // flex:1,
            child:TextButton(
              child: Image.asset('assets/images/dice$dicenumberl.png'),
              onPressed:(){
                pressed();
              },
            ),
          ),
          Expanded(
            // flex: 2,
              child:TextButton(
                child: Image.asset('assets/images/dice$dicenumberr.png'),
                onPressed:(){
                  pressed();
                },
              )
          ),
        ],
      )],
    );
  }
}
