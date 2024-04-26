import 'package:get/get.dart';

class adminContrroller extends GetxController {
  final List<Map<String, dynamic>> products = [
    {
      'image': 'assets/apple_watch.png',
      'name': 'Apple Watch',
      'location': '6096 Marjolaine Land',
      'dateTime': '12.09.2019 - 12:53 PM',
      'piece': 423,
      'amount': '\$34,295',
      'status': 'Delivered',
    },
    {
      'image': 'assets/apple_watch.png',
      'name': 'Apple Watch',
      'location': '6096 Marjolaine Land',
      'dateTime': '12.09.2019 - 12:53 PM',
      'piece': 423,
      'amount': '\$34,295',
      'status': 'Delivered',
    },
    {
      'image': 'assets/apple_watch.png',
      'name': 'Apple Watch',
      'location': '6096 Marjolaine Land',
      'dateTime': '12.09.2019 - 12:53 PM',
      'piece': 423,
      'amount': '\$34,295',
      'status': 'Delivered',
    },
    // Add more products here...
  ];
  final List<Map<String, dynamic>> data = [
    {
      "id": "00001",
      "name": "Christine Brooks",
      "address": "089 Kutch Green Apt. 448",
      "date": "14 Feb 2019",
      "type": "Electric",
    },
    {
      "id": "00002",
      "name": "Rosie Pearson",
      "address": "979 Immanuel Ferry Suite 526",
      "date": "14 Feb 2019",
      "type": "Book",
    },
    {
      "id": "00003",
      "name": "Darrell Caldwell",
      "address": "8587 Frida Ports",
      "date": "14 Feb 2019",
      "type": "Medicine",
    },
    {
      "id": "00004",
      "name": "Gilbert Johnston",
      "address": "768 Destiny Lake Suite 600",
      "date": "14 Feb 2019",
      "type": "Mobile",
    },
    {
      "id": "00005",
      "name": "Alan Cain",
      "address": "042 Mylene Throughway",
      "date": "14 Feb 2019",
      "type": "Watch",
    },
    {
      "id": "00006",
      "name": "Alfred Murray",
      "address": "543 Weimann Mountain",
      "date": "14 Feb 2019",
      "type": "Medicine",
    },
  ];
  RxBool showDrawer = false.obs;
  RxInt mainIndx = 0.obs;
}
