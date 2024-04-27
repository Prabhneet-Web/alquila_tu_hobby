import 'package:get/get.dart';

class ChatScreenController extends GetxController {
  RxInt selectedCahat = (-1).obs;
  final List<Map<String, dynamic>> data = [
    {
      "name": "johnn wick",
      "address": "089 Kutch Green Apt. 448",
      "lastmessage": "hey whatsup?",
      "time": "24m",
    },
    {
      "id": "00002",
      "name": "Vin Diseal",
      "address": "979 Immanuel Ferry Suite 526",
      "lastmessage": "what about you?",
      "time": "5m",
    },
    {
      "name": "johnn wick",
      "address": "089 Kutch Green Apt. 448",
      "lastmessage": "hey whatsup?",
      "time": "24m",
    },
    {
      "id": "00002",
      "name": "Vin Diseal",
      "address": "979 Immanuel Ferry Suite 526",
      "lastmessage": "what about you?",
      "time": "5m",
    },
    {
      "name": "johnn wick",
      "address": "089 Kutch Green Apt. 448",
      "lastmessage": "hey whatsup?",
      "time": "24m",
    },
    {
      "id": "00002",
      "name": "Vin Diseal",
      "address": "979 Immanuel Ferry Suite 526",
      "lastmessage": "what about you?",
      "time": "5m",
    },
    {
      "name": "johnn wick",
      "address": "089 Kutch Green Apt. 448",
      "lastmessage": "hey whatsup?",
      "time": "24m",
    },
    {
      "id": "00002",
      "name": "Vin Diseal",
      "address": "979 Immanuel Ferry Suite 526",
      "lastmessage": "what about you?",
      "time": "5m",
    },
  ];
  final List<Map<String, dynamic>> messageedata = [
    {
      "id": "me",
      "time": ["heyy", "whats up", "How are you"],
    },
    {
      "id": "other",
      "time": ["heyy", "whats up", "How are you"],
    },
    {
      "id": "me",
      "time": ["heyy", "whats up", "How are you"],
    },
    {
      "id": "other",
      "time": ["heyy", "whats up", "How are you"],
    },
    {
      "id": "me",
      "time": ["heyy"],
    },
    {
      "id": "other",
      "time": ["How are you"],
    },
  ];
}
