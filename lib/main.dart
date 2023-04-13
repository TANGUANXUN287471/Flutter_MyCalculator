import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}
class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  TextEditingController textEditingController = TextEditingController();
  int num1 = 0, num2 = 0;
  String val = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(title: const Text("My Calculator")),

          body: Center(

            
            
            child: Column(crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextField(
                controller: textEditingController,
                decoration: InputDecoration(hintText: ''
              ,border: OutlineInputBorder(
               borderRadius: BorderRadius.circular(10.0),
              ),)),

              Container(
                  padding: const EdgeInsets.all(16),
                  height: 300,
                  width: 250,
                  color: Colors.orange,
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            onPressed: (){calculate("1");}, child: const Text("1")),
                        ElevatedButton(
                            onPressed: (){calculate("2");}, child: const Text("2")),
                        ElevatedButton(
                            onPressed: (){calculate("3");}, child: const Text("3")),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            onPressed: (){calculate("4");}, child: const Text("4")),
                        ElevatedButton(
                            onPressed: (){calculate("5");}, child: const Text("5")),
                        ElevatedButton(
                            onPressed: (){calculate("6");}, child: const Text("6")),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            onPressed: (){calculate("7");}, child: const Text("7")),
                        ElevatedButton(
                            onPressed: (){calculate("8");}, child: const Text("8")),
                        ElevatedButton(
                            onPressed: (){calculate("9");}, child: const Text("9")),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                            onPressed: (){calculate("0");}, child: const Text("0")),
                      ],
                    ),
                  ]))
            ]),
          ),
        ));
  }


  void calculate(String s) {
    setState(() {
      num2 = int.parse(s);
      num1 = num1 + num2;
      textEditingController.text = num1.toString();
    });
  }
}
