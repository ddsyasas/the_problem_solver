import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: const Text('The Problem-Solver'),
          backgroundColor: Colors.grey.shade800,
        ),
        body: problemsolver(),
      ),
    ),
  );
}
int number = 55;
class problemsolver extends StatefulWidget {
  //const problemsolver({Key? key}) : super(key: key);

  @override
  State<problemsolver> createState() => _problemsolverState();
}

class _problemsolverState extends State<problemsolver> {


  void numbergen(){
    setState(() {
      number = Random().nextInt(3) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: (){
                numbergen();
                print('this is the $number');
              },
              child: Image(

                image: AssetImage('images/answer$number.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
