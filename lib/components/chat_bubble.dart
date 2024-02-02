import 'package:flutter/material.dart';

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isCurrentUser;

  const ChatBubble({
    Key? key,
    required this.message,
    required this.isCurrentUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isCurrentUser ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4.0),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(isCurrentUser ? 12.0 : 0),
            topRight: Radius.circular(isCurrentUser ? 0 : 12.0),
            bottomLeft: Radius.circular(12.0),
            bottomRight: Radius.circular(12.0),
          ),
          color: isCurrentUser ? Colors.blue : Colors.grey.shade200,
        ),
        child: Text(
          message,
          style: TextStyle(fontSize: 16, color: isCurrentUser ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
