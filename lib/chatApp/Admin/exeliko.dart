import 'package:flutter/material.dart';

class Repro extends StatefulWidget {
  const Repro({super.key});

  @override
  State<Repro> createState() => _ReproState();
}

class _ReproState extends State<Repro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Paramètres"),
          actions: [
            Padding(
              padding: const EdgeInsets.all(0.9),
              child: Icon(Icons.search),
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width * 0.9,
              padding: const EdgeInsets.all(0.5),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  Column(
                    children: [
                      Text(
                        "Compte Samsung",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                      Row(
                        children: [
                          Text(
                            "Profil .",
                            style: TextStyle(fontSize: 8, color: Colors.white),
                          ),
                          Text(
                            "Samsung .",
                            style: TextStyle(fontSize: 8, color: Colors.white),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            )
          ],
        )

        // Column(
        //   children: [
        //     Container(
        //       height: 20,
        //       width: 15,
        //       padding: const EdgeInsets.all(0.5),
        //       decoration: BoxDecoration (
        //         color: Colors.black,
        //         borderRadius: BorderRadius.circular(20),
        //       ),
        //       child: Text("Connexions", style: TextStyle(fontSize: 10, color: Colors.white),),
        //     )
        //   ],
        // )

        );
  }
}
