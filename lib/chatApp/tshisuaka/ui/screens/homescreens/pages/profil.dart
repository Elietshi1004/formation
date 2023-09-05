
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilUI extends StatefulWidget {
  const ProfilUI({super.key});

  @override
  State<ProfilUI> createState() => _ProfilUIState();
}

class _ProfilUIState extends State<ProfilUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (

      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(onPressed: ()=> Get.back(), icon: Icon(Icons.close)),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle
              ),
child: Icon(Icons.person),
            ),
            SizedBox(
              height: 10,
            ),
            Text("Tiuka",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
            
            Text("tuika@mail.com"),
            Icon(Icons.message),
          ],
        ),
      ),
    );
  }
}