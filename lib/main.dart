import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

void main() {
  ErrorWidget.builder = (FlutterErrorDetails errorDetails) => MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.error_outline_outlined,
                  size: 100,
                  color: Colors.red,
                ),
                const SizedBox(height: 25),
                const Text(
                  "Something went wrong",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 25),
                ElevatedButton(
                  onPressed: () {
                    var Restart;
                    Restart.restartApp();
                  },
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    minimumSize: const Size(200, 50),
                  ),
                  child: const Text(
                    "Restart App",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String output = '';
  String ans = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.orange,
              title: const Text(
                "Calculator",
                style: TextStyle(color: Colors.white),
              ),
            ),
            backgroundColor: Colors.black,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(output,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 30)),
                    )),
                const SizedBox(
                  height: 30,
                ),
                Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(ans,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 30)),
                    )),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    btn(
                        text: "Ac",
                        onTap: () {
                          setState(() {
                            output = '';
                            ans = '';
                          });
                        },
                        btnColor: Colors.orange,
                        textColor: Colors.black),
                    btn(
                        text: "<=",
                        onTap: () {
                          setState(() {
                            output = output.substring(0, output.length - 1);
                          });
                        },
                        btnColor: Colors.orange,
                        textColor: Colors.black),
                    btn(
                        text: "%",
                        onTap: () {
                          if (output.isEmpty ||
                              (output[output.length - 1] == '+' ||
                                  output[output.length - 1] == '-' ||
                                  output[output.length - 1] == '*' ||
                                  output[output.length - 1] == '/' ||
                                  output[output.length - 1] == '%' ||
                                  output[output.length - 1] == '=' ||
                                  output[output.length - 1] == '.')) {
                          } else {
                            setState(() {
                              output += '%';
                            });
                          }
                        },
                        btnColor: Colors.orange,
                        textColor: Colors.black),
                    btn(
                        text: "/",
                        onTap: () {
                          if (output.isEmpty ||
                              (output[output.length - 1] == '+' ||
                                  output[output.length - 1] == '-' ||
                                  output[output.length - 1] == '*' ||
                                  output[output.length - 1] == '/' ||
                                  output[output.length - 1] == '%' ||
                                  output[output.length - 1] == '=' ||
                                  output[output.length - 1] == '.')) {
                          } else {
                            setState(() {
                              output += '/';
                            });
                          }
                        },
                        btnColor: Colors.orange,
                        textColor: Colors.black),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    btn(
                        text: "7",
                        onTap: () {
                          setState(() {
                            output += '7';
                          });
                        },
                        btnColor: Colors.white,
                        textColor: Colors.black),
                    btn(
                        text: "8",
                        onTap: () {
                          setState(() {
                            output += '8';
                          });
                        },
                        btnColor: Colors.white,
                        textColor: Colors.black),
                    btn(
                        text: "9",
                        onTap: () {
                          setState(() {
                            output += '9';
                          });
                        },
                        btnColor: Colors.white,
                        textColor: Colors.black),
                    btn(
                        text: "×",
                        onTap: () {
                          if (output.isEmpty ||
                              (output[output.length - 1] == '+' ||
                                  output[output.length - 1] == '-' ||
                                  output[output.length - 1] == '*' ||
                                  output[output.length - 1] == '/' ||
                                  output[output.length - 1] == '%' ||
                                  output[output.length - 1] == '=' ||
                                  output[output.length - 1] == '.')) {
                          } else {
                            setState(() {
                              output += '*';
                            });
                          }
                        },
                        btnColor: Colors.orange,
                        textColor: Colors.black),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    btn(
                        text: "4",
                        onTap: () {
                          setState(() {
                            output += '4';
                          });
                        },
                        btnColor: Colors.white,
                        textColor: Colors.black),
                    btn(
                        text: "5",
                        onTap: () {
                          setState(() {
                            output += '5';
                          });
                        },
                        btnColor: Colors.white,
                        textColor: Colors.black),
                    btn(
                        text: "6",
                        onTap: () {
                          setState(() {
                            output += '6';
                          });
                        },
                        btnColor: Colors.white,
                        textColor: Colors.black),
                    btn(
                        text: "-",
                        onTap: () {
                          if (output.isEmpty ||
                              (output[output.length - 1] == '+' ||
                                  output[output.length - 1] == '-' ||
                                  output[output.length - 1] == '*' ||
                                  output[output.length - 1] == '/' ||
                                  output[output.length - 1] == '%' ||
                                  output[output.length - 1] == '=' ||
                                  output[output.length - 1] == '.')) {
                          } else {
                            setState(() {
                              output += '-';
                            });
                          }
                        },
                        btnColor: Colors.orange,
                        textColor: Colors.black),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    btn(
                        text: "1",
                        onTap: () {
                          setState(() {
                            output += '1';
                          });
                        },
                        btnColor: Colors.white,
                        textColor: Colors.black),
                    btn(
                        text: "2",
                        onTap: () {
                          setState(() {
                            output += '2';
                          });
                        },
                        btnColor: Colors.white,
                        textColor: Colors.black),
                    btn(
                        text: "3",
                        onTap: () {
                          setState(() {
                            output += '3';
                          });
                        },
                        btnColor: Colors.white,
                        textColor: Colors.black),
                    btn(
                        text: "+",
                        onTap: () {
                          if (output.isEmpty ||
                              (output[output.length - 1] == '+' ||
                                  output[output.length - 1] == '-' ||
                                  output[output.length - 1] == '*' ||
                                  output[output.length - 1] == '/' ||
                                  output[output.length - 1] == '%' ||
                                  output[output.length - 1] == '=' ||
                                  output[output.length - 1] == '.')) {
                          } else {
                            setState(() {
                              output += '+';
                            });
                          }
                        },
                        btnColor: Colors.orange,
                        textColor: Colors.black),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    btn(
                        text: "0",
                        onTap: () {
                          if (output.isEmpty) {
                          } else {
                            setState(() {
                              output += '0';
                            });
                          }
                        },
                        btnColor: Colors.white,
                        textColor: Colors.black),
                    btn(
                        text: ".",
                        onTap: () {
                          if (output.isEmpty ||
                              (output[output.length - 1] == '+' ||
                                  output[output.length - 1] == '-' ||
                                  output[output.length - 1] == '*' ||
                                  output[output.length - 1] == '/' ||
                                  output[output.length - 1] == '%' ||
                                  output[output.length - 1] == '=' ||
                                  output[output.length - 1] == '.')) {
                          } else {
                            setState(() {
                              output += '.';
                            });
                          }
                        },
                        btnColor: Colors.white,
                        textColor: Colors.black),
                    btn(
                      text: "=",
                      onTap: () {
                        if (output.isEmpty &&
                            (output[output.length - 1] == '+' ||
                                output[output.length - 1] == '-' ||
                                output[output.length - 1] == '*' ||
                                output[output.length - 1] == '/' ||
                                output[output.length - 1] == '%' ||
                                output[output.length - 1] == '=' ||
                                output[output.length - 1] == '.')) {
                        } else {
                          Parser parser = Parser();
                          Expression expression = parser.parse(output);
                          double res = expression.evaluate(
                              EvaluationType.REAL, ContextModel());
                          setState(() {
                            ans = res.toString();
                          });
                        }
                      },
                      btnColor: Colors.orange,
                      textColor: Colors.black,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            )));
  }
}

Widget btn(
    {required String text,
    required Function() onTap,
    required Color btnColor,
    required Color textColor}) {
  return ElevatedButton(
    onPressed: onTap,
    style: ElevatedButton.styleFrom(
        backgroundColor: btnColor, fixedSize: const Size(40, 40)),
    child: Text(text, style: TextStyle(color: textColor, fontSize: 18)),
  );
}
