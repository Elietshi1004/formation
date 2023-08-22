import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'chatApp/tshisuaka/ui/screens/authscreen/auth.dart';
import 'home.dart';
import 'home2.dart';
import 'likorec.dart';
import 'exeliko.dart';

void main() {
  runApp(const MyApp());rty
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(),
        debugShowCheckedModeBanner: false,
        // home: HomeUI(),
        // home: MyHomePage()
        // home: WooclapUI(),
        home: AuthUI());
  }
}

//Widget : objet graphique
//Stateless : Sans etat, graphique qui ne change jamais
//Stateful : Avec Etat, graphique qui change
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int fois = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My Home Page"),
          backgroundColor: Colors.green,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              fois++;
            });
          },
          child: const Icon(Icons.add),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Vous avez tapé",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "$fois fois",
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 30,
              ),
              // ElevatedButton(
              //     style: ButtonStyle(
              //       backgroundColor: MaterialStateColor.resolveWith(
              //           (states) => Colors.green),
              //     ),
              //     onPressed: () {
              //       setState(() {
              // fois++;
              //       });
              //     },
              //     child: Text("Tapez")),
            ],
          ),
        ));
  }
}

class Texte {
  Texte(
    String text, {
    String? style,
  });
}
