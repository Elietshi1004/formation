import 'package:flutter/material.dart';

import '../../../models/chatmodel.dart';

Widget cardMessage(
    {required ChatModel chat,
    required BuildContext context,
    required String myemail}) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
      mainAxisAlignment: myemail.trim() == chat.emailSender!.trim()
          ? MainAxisAlignment.end
          : MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: myemail.trim() == chat.emailSender!.trim()
                        ? Colors.blue
                        : Colors.grey[200]),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      chat.text ?? "",
                      style: TextStyle(
                          color: myemail.trim() == chat.emailSender!.trim()
                              ? Colors.white
                              : Colors.black87),
                    ),
                  ),
                ),
              ),
              Text(
                chat.dateCreate ?? "",
                style: TextStyle(fontSize: 10),
              )
            ],
          ),
        ),
      ],
    ),
  );
}
