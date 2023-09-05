import 'package:flutter/material.dart';
import 'package:formation/chatApp/tshisuaka/ui/screens/widget/textfield.dart';

import '../../../../models/chatmodel.dart';
import '../../widget/cardMessage.dart';

class MessageUI extends StatefulWidget {
  const MessageUI({super.key});

  @override
  State<MessageUI> createState() => _MessageUIState();
}

class _MessageUIState extends State<MessageUI> {
  String text = "";
  String myemail = "abcde";
  var listMessages = <ChatModel>[
    ChatModel(
        text: "Bonjour",
        dateCreate: DateTime.now().toString(),
        emailSender: "abcde",
        emailReceiver: "fghjk",
        urlFile: ""),
    ChatModel(
        text: "Oui bonjour",
        dateCreate: DateTime.now().toString(),
        emailSender: "fghjk",
        emailReceiver: "abcde",
        urlFile: ""),
    ChatModel(
        text: "Comment vous allez",
        dateCreate: DateTime.now().toString(),
        emailSender: "abcde",
        emailReceiver: "fghjk",
        urlFile: ""),
    ChatModel(
        text: "Je vais bien et toi",
        dateCreate: DateTime.now().toString(),
        emailSender: "fghjk",
        emailReceiver: "abcde",
        urlFile: ""),
    ChatModel(
        text:
            "Je voulais vous faire parti d'un probleme concernant mes occupations ces derniers temps",
        dateCreate: DateTime.now().toString(),
        emailSender: "abcde",
        emailReceiver: "fghjk",
        urlFile: ""),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 20,
                child: Icon(Icons.person),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Gogo"),
                Text(
                  "En ligne",
                  style: TextStyle(fontSize: 10),
                )
              ],
            )
          ],
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.info))],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: ListView.builder(
            itemCount: listMessages.length,
            itemBuilder: (ctx, i) {
              return cardMessage(
                  chat: listMessages[i], myemail: myemail, context: ctx);
            }),
      ),
      bottomNavigationBar: Container(
        height: 100,
        child: Center(
          child: Row(
            children: [
              Visibility(
                visible: text.isEmpty,
                child: Row(
                  children: [
                    IconButton(onPressed: () {}, icon: Icon(Icons.camera)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.image)),
                    IconButton(onPressed: () {}, icon: Icon(Icons.mic_none)),
                  ],
                ),
              ),
              Expanded(
                  child: CustomTextfieldMessage(
                      text: "ecrivez message",
                      context: context,
                      onChanged: (String v) {
                        setState(() {
                          text = v;
                        });
                      },
                      onSend: () {}))
            ],
          ),
        ),
      ),
    );
  }
}
