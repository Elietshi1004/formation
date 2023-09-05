import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widget/button.dart';

class ProfilUI extends StatefulWidget {
  const ProfilUI({super.key});

  @override
  State<ProfilUI> createState() => _ProfilUIState();
}

class _ProfilUIState extends State<ProfilUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // IconButton(onPressed: () => Get.back(), icon: Icon(Icons.close)),
            // const SizedBox(
            //   height: 15,
            // ),
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  // decoration: BoxDecoration(shape: BoxShape.circle),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          // colorFilter:
                          //     ColorFilter.mode(Colors.black, BlendMode.color),
                          image: AssetImage("assets/images/Avatar2.png"))),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  // decoration: BoxDecoration(shape: BoxShape.circle),
                  decoration: BoxDecoration(color: Colors.white54),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/Avatar2.png"))),
                )
              ],
            ),

            SizedBox(
              height: 10,
            ),
            IconButton(onPressed: () => Get.back(), icon: Icon(Icons.close)),
            SizedBox(
              height: 10,
            ),
            Text(
              "Tiuka",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              "tuika@mail.com",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue),
            ),
            // Padding(
            //   padding: const EdgeInsets.all(12.0),
            //   child: Icon(Icons.message),
            // ),
            SizedBox(
              height: 15,
            ),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    color: Colors.blue[300],
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: customButton(
                        couleur: Colors.white,
                        text: "Envoyer message",
                        ontap: () {},
                        couleurText: Colors.blue),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
