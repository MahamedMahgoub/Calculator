import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> symbols = [
    'C',
    'Del',
    '%',
    '/',
    '7',
    '8',
    '9',
    '*',
    '4',
    '5',
    '6',
    '+',
    '1',
    '2',
    '3',
    ' -',
    '.',
    '0',
    'Ans',
    '=',
  ];

  String input = '5+1';
  String output = '7';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text('Calculator'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(
                  input,
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: Text(
                  output,
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w400,
                    color: Colors.redAccent,
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height / 80),
              GridView.builder(
                itemCount: symbols.length,
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      if (symbols[index] == 'C') {
                        setState(() {
                          input = '';
                          output = '';
                        });
                      } else if (symbols[index] == 'Del') {
                        setState(() {
                          input = input.substring(0, input.length - 1);
                          output = '';
                        });
                      } else if (symbols[index] == 'Ans') {
                        setState(() {
                          input = output;
                          output = '';
                        });
                      } else if (symbols[index] == '%' ||
                          symbols[index] == '/' ||
                          symbols[index] == '*' ||
                          symbols[index] == '+' ||
                          symbols[index] == '-') {
                        if (input.endsWith('%') ||
                            input.endsWith('/') ||
                            input.endsWith('*') ||
                            input.endsWith('+') ||
                            input.endsWith('-')) {
                          Null;
                        } else {
                          setState(() {
                            input += symbols[index];
                          });
                        }
                      } else if (symbols[index] == '=') {
                        Expression exp = Parser().parse(input);
                        double result =
                            exp.evaluate(EvaluationType.REAL, ContextModel());
                        setState(() {
                          output = result.toString();
                        });
                      } else {
                        setState(() {
                          input += symbols[index];
                        });
                      }
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: mySymbolsColor(symbols[index]),
                        borderRadius: BorderRadius.circular(200),
                      ),
                      margin: const EdgeInsets.all(10),
                      alignment: Alignment.center,
                      child: Text(
                        symbols[index],
                        style: TextStyle(
                          fontSize: 25,
                          color: mySymbolsTextColor(symbols[index]),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color mySymbolsColor(String symbol) {
    if (symbol == 'C') {
      return Colors.teal.shade200;
    } else if (symbol == 'Del') {
      return Colors.redAccent.shade100;
    } else if (symbol == '%' ||
        symbol == '/' ||
        symbol == '*' ||
        symbol == '+' ||
        symbol == '-' ||
        symbol == '=') {
      return Colors.blue.shade300;
    } else {
      return Colors.grey.shade200;
    }
  }

  Color mySymbolsTextColor(String symbol) {
    if (symbol == 'C' ||
        symbol == 'Del' ||
        symbol == '%' ||
        symbol == '/' ||
        symbol == '*' ||
        symbol == '+' ||
        symbol == '-' ||
        symbol == '=') {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }
}
