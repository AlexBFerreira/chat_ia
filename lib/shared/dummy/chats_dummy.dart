import 'package:flutter_riverpod/flutter_riverpod.dart';

final chatsProvider = Provider<Map<String, dynamic>>((ref) {
  return {
  "chatId" : "321",
  "name" : "Alexander Leon",
  "status" : "active",
  "image" : "https://xsgames.co/randomusers/assets/avatars/pixel/",
  "lastMessage" : {
    "hour" : "11:56 PM", 
    "date" : "21/7/2023", 
    "message" : "Chamo, vas a venir?", 
    "status" : "unRead"
  }};
});