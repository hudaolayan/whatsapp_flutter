import 'package:whatsapp/models/call_model.dart';
import 'package:whatsapp/models/call_status.dart';

import '../models/chat_model.dart';

class DummyData {
  static List<ChatModel> chatItems = [
    ChatModel(
      image_url:
          "https://cdn.pixabay.com/photo/2020/06/14/19/19/girl-5299081_1280.jpg",
      sender: "Heba",
      last_message: "Hey there",
      time: "10:30 PM",
      newMsgsCount: 3,
    ),
    ChatModel(
      image_url:
          "https://cdn.pixabay.com/photo/2023/10/18/10/50/butterfly-8323783_1280.jpg",
      sender: "Mum",
      last_message: "يارب غيرني للأفضل في ديني ونفسي وتفكيري واعطني خير الاقدار واكفني شرها ",
      time: "8:16 PM",
      newMsgsCount: 0,
    ),
    ChatModel(
      image_url:
          "https://cdn.pixabay.com/photo/2015/06/12/21/58/child-807547_1280.jpg",
      sender: "Delivery xx",
      last_message: "6.5 JD ",
      time: "6:24 PM",
      newMsgsCount: 0,
    ),
    ChatModel(
      image_url:
          "https://cdn.pixabay.com/photo/2020/06/14/19/19/girl-5299081_1280.jpg",
      sender: "0781927338",
      last_message: "Thanks",
      time: "3:03 PM",
      newMsgsCount: 1,
    ),
    ChatModel(
      image_url:
          "https://cdn.pixabay.com/photo/2023/10/18/10/50/butterfly-8323783_1280.jpg",
      sender: "0798123454",
      last_message: "On my way!",
      time: "3:00 PM",
      newMsgsCount: 0,
    ),
    ChatModel(
      image_url:
          "https://cdn.pixabay.com/photo/2020/06/14/19/19/girl-5299081_1280.jpg",
      sender: "0781475378",
      last_message: "Yes, Sure",
      time: "9:07 AM",
      newMsgsCount: 0,
    ),
    ChatModel(
      image_url:
          "https://cdn.pixabay.com/photo/2023/10/18/10/50/butterfly-8323783_1280.jpg",
      sender: "0784325458",
      last_message: "Lorem ipsum ....",
      time: "6:22 AM",
      newMsgsCount: 0,
    ),
    ChatModel(
      image_url:
          "https://cdn.pixabay.com/photo/2020/06/14/19/19/girl-5299081_1280.jpg",
      sender: "Al Etihad ",
      last_message: "Hey there",
      time: "12:36 AM",
      newMsgsCount: 0,
    ),
    ChatModel(
      image_url:
          "https://cdn.pixabay.com/photo/2023/10/18/10/50/butterfly-8323783_1280.jpg",
      sender: "samira",
      last_message: "Hey there",
      time: "Yesterday",
      newMsgsCount: 0,
    ),
    ChatModel(
      image_url:
          "https://cdn.pixabay.com/photo/2020/06/14/19/19/girl-5299081_1280.jpg",
      sender: "0789124774",
      last_message: "Hey there",
      time: "Yesterday",
      newMsgsCount: 0,
    ),
    ChatModel(
      image_url:
          "https://cdn.pixabay.com/photo/2023/10/18/10/50/butterfly-8323783_1280.jpg",
      sender: "0798374332",
      last_message: "Hey there",
      time: "4/14/25",
      newMsgsCount: 0,
    ),
    ChatModel(
      image_url:
          "https://cdn.pixabay.com/photo/2015/06/12/21/58/child-807547_1280.jpg",
      sender: "0783424284",
      last_message: "Hey there",
      time: "4/13/25",
      newMsgsCount: 0,
    ),
    ChatModel(
      image_url:
          "https://cdn.pixabay.com/photo/2021/04/08/18/59/yellow-rose-6162613_1280.jpg",
      sender: "0781234112",
      last_message:
          "Dear You,There are moments in life when words become more than just letters",
      time: "4/10/25",
      newMsgsCount: 0,
    ),
    ChatModel(
      image_url:
          "https://cdn.pixabay.com/photo/2021/09/13/05/34/kid-6620283_1280.jpg",
      sender: "0771267898",
      last_message: "كل عام وأنتم بألف خير تقبل الله صيامكم وقيامكم",
      time: "2/04/25",
      newMsgsCount: 0,
    ),
    ChatModel(
      image_url:
          "https://cdn.pixabay.com/photo/2024/03/11/15/25/trees-8626959_1280.jpg",
      sender: "Lorem Ipsum",
      last_message: "Hey there",
      time: "1/17/24",
      newMsgsCount: 0,
    ),
  ];

  static List<CallModel> callItems = [
    CallModel(
      image_url:
          "https://cdn.pixabay.com/photo/2020/06/14/19/19/girl-5299081_1280.jpg",
      sender: "Huda",
      time: "April 13, 9:27 AM",
      status: CallStatus.INCOMING,
    ),
    CallModel(
      image_url:
          "https://cdn.pixabay.com/photo/2020/06/14/19/19/girl-5299081_1280.jpg",
      sender: "Mum",
      time: "April 8, 5:15 PM",
      status: CallStatus.OUTGOING,
    ),
    CallModel(
      image_url:
          "https://cdn.pixabay.com/photo/2023/10/18/10/50/butterfly-8323783_1280.jpg",
      sender: "Sara",
      time: "April 7, 9:46 PM",
      status: CallStatus.OUTGOING,
    ),
    CallModel(
      image_url:
          "https://cdn.pixabay.com/photo/2020/06/14/19/19/girl-5299081_1280.jpg",
      sender: "UnKnown",
      time: "April 4, 10:36 PM",
      status: CallStatus.MISSED,
    ),
    CallModel(
      image_url:
          "https://cdn.pixabay.com/photo/2023/10/18/10/50/butterfly-8323783_1280.jpg",
      sender: "0781632117",
      time: "March 27, 2:55 PM",
      status: CallStatus.INCOMING,
    ),
  ];
}
