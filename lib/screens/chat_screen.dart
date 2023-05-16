// ignore_for_file: library_private_types_in_public_api

import 'package:cool_alert/cool_alert.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:home_coach/constants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:home_coach/UI/message_bubble.dart';

final _firestore = FirebaseFirestore.instance;
late User loggedInUser;

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  static const String id = "chat_screen";
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _auth = FirebaseAuth.instance;

  late String textMessage;

  var msgController = TextEditingController();

  void getCurrentUser() async {
    try {
      final user = _auth.currentUser;
      if (user != null) {
        loggedInUser = user;
      }
    } catch (e) {
      CoolAlert.show(
        context: context,
        type: CoolAlertType.error,
        title: "Error",
        titleTextStyle: const TextStyle(color: Colors.white),
        text: "Error in getting current user",
        textTextStyle: const TextStyle(color: Colors.white),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    getCurrentUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: null,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () async {
              await _auth.signOut();
              Navigator.pop(context);
            },
          ),
        ],
        title: const Text('⚡️Chat'),
        centerTitle: true,
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const MessageStream(),
            Container(
              decoration: kMessageContainerDecoration,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      controller: msgController,
                      style: const TextStyle(color: Colors.black),
                      onChanged: (value) {
                        textMessage = value;
                      },
                      decoration: kMessageTextFieldDecoration,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      _firestore.collection('messages').add(
                        {
                          'text': textMessage,
                          'sender': loggedInUser.email,
                          'time':
                          DateTime.now().millisecondsSinceEpoch.toString(),
                        },
                      );
                      msgController.clear();
                    },
                    child: const Text(
                      'Send',
                      style: kSendButtonTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MessageStream extends StatelessWidget {
  const MessageStream({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: _firestore.collection('messages').snapshots(),
      builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (!snapshot.hasData) {
          return const Center(
            child: CircularProgressIndicator(
              backgroundColor: Colors.lightBlueAccent,
            ),
          );
        }
        final recievedMessages = snapshot.data!.docs;

        // wrap this in async function
            () async {
          await Future.delayed(const Duration(milliseconds: 500));
        };
        recievedMessages.sort((a, b) {
          var aTime = a.get('time');
          var bTime = b.get('time');
          return aTime.compareTo(bTime);
        });

        // reverse the list
        final messages = recievedMessages.reversed.toList();

        List<MessageBubble> messageBubbles = [];
        for (var message in messages) {
          final messageText = message.get('text');
          final messageSender = message.get('sender');

          final messageBubble = MessageBubble(
            sender: messageSender,
            msgText: messageText,
            isMe: messageSender == loggedInUser.email,
          );

          messageBubbles.add(messageBubble);
        }
        return Expanded(
          child: ListView(
            reverse: true,
            children: messageBubbles.toList(),
          ),
        );
      },
    );
  }
}

