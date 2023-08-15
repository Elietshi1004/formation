import 'package:flutter/material.dart';

class LicoHome extends StatefulWidget {
  const LicoHome({super.key});

  @override
  State<LicoHome> createState() => _LicoHomeState();
}

class _LicoHomeState extends State<LicoHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("wooclap"),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.settings),
            )
          ],
        ),
        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Text("Est une marque de CPU",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.info, color: Colors.grey, size: 14),
                Text("En attente du prochain clap",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w200)),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            containerHome(
                backColor: Colors.blue, textColor: Colors.white, text: "Intel"),
            containerHome(
                backColor: Colors.white, textColor: Colors.black, text: "XP"),
            containerHome(
                backColor: Colors.white,
                textColor: Colors.black,
                text: "Apple"),
          ],
        ));
  }

  Widget containerHome(
      {required Color backColor,
      required Color textColor,
      required String text}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.9,
          padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
          decoration: BoxDecoration(
              // border: Border.all(color: Colors.black26),
              boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 2.0)],
              color: backColor,
              borderRadius: BorderRadius.circular(20)),
          child: Text(text, style: TextStyle(fontSize: 16, color: textColor))),
    );
  }
}
