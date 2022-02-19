import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  runApp(const Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const SimpleCalculator(title: 'Calculator'),
    );
  }
}

class SimpleCalculator extends StatefulWidget {
  const SimpleCalculator({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<SimpleCalculator> createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {

  String equation = "0";
  String result = "O";
  String expression = "";
  double equationFontSize = 38.0;
  double resultFontSize = 48.0;

  buttonPressed(String buttonText){
    setState(() {
      if(buttonText == 'C'){
        equation = '0';
        result = '0';
        equationFontSize = 38.0;
        resultFontSize = 48.0;
      }
      else if(buttonText == '←'){
        equationFontSize = 38.0;
        double resultFontSize = 48.0;
        equation = equation.substring(0, equation.length -1);
        if(equation == ""){
          equation = "0";
        }
      }
      else if(buttonText == '='){
        equationFontSize = 38.0;
        resultFontSize = 48.0;
        expression = equation;
        expression = expression.replaceAll('×', '*');
        expression = expression.replaceAll("÷", '/');

        try{
          Parser p = Parser();
          Expression exp = p.parse(expression);
          ContextModel cm = ContextModel();
          result = '${exp.evaluate(EvaluationType.REAL, cm)}';
        }
        catch(e){
          result = "Error";
        }
      }
      else{
        equationFontSize = 48.0;
         resultFontSize = 38.0;
        if(equation == '0'){
          equation = buttonText;
        }
        else{
          equation = equation + buttonText;
        }
      }

    });
  }
  Widget buildButton(String buttonText, double buttonHeight, Color buttonColor){
    final ButtonStyle flatButtonStyle = TextButton.styleFrom(
      primary: Colors.white,
      minimumSize: const Size(88, 44),
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
      ),

    );
    return Container(
      height: MediaQuery.of(context).size.height *0.1 * buttonHeight,
      color: buttonColor,
      child: TextButton(
        style: flatButtonStyle,
        onPressed:() => buttonPressed(buttonText),
        child: Text(
          buttonText,
          style: const TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          )
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            child:  Text(
              equation,
              style: TextStyle(fontSize: equationFontSize),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
            child:  Text( result ,style: TextStyle(fontSize: resultFontSize),
            ),
          ),
          const Expanded(child: Divider()
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width*0.75,
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        buildButton("C", 1, Colors.redAccent),
                        buildButton("←", 1, Colors.cyan),
                        buildButton("÷", 1, Colors.cyan),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton("7", 1, Colors.cyan),
                        buildButton("8", 1, Colors.cyan),
                        buildButton("9", 1, Colors.cyan),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton("4", 1, Colors.cyan),
                        buildButton("5", 1, Colors.cyan),
                        buildButton("6", 1, Colors.cyan),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton("1", 1, Colors.cyan),
                        buildButton("2", 1, Colors.cyan),
                        buildButton("3", 1,  Colors.cyan),
                      ],
                    ),
                    TableRow(
                      children: [
                        buildButton(".", 1, Colors.cyan),
                        buildButton("0", 1, Colors.cyan),
                        buildButton("00", 1,  Colors.cyan),
                      ],
                    )
                  ],),
              ),
              Container(
                width: MediaQuery.of(context).size.width *0.25,
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        buildButton('×', 1, Colors.cyan),
                      ]
                    ),
                    TableRow(
                        children: [
                          buildButton('+', 1, Colors.cyan),
                        ]
                    ),
                    TableRow(
                        children: [
                          buildButton('-', 1, Colors.cyan),
                        ]
                    ),
                    TableRow(
                        children: [
                          buildButton('=', 2, Colors.redAccent),
                        ]
                    )
                  ],
                ),
              )
            ],)

        ],
      ),
    );
  }
}
