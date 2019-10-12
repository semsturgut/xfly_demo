class ChatModel {
  final String avatarUrl;
  final String name;
  final String datetime;
  final String message;

  ChatModel({this.avatarUrl, this.name, this.datetime, this.message});

  static final List<ChatModel> dummyData = [
    ChatModel(
      avatarUrl: "assets/portraits/34.jpg",
      name: "Seda",
      datetime: "20:18",
      message: "Uçuştan memnun kaldınız mı?",
    ),
    ChatModel(
      avatarUrl: "assets/portraits/49.jpg",
      name: "Eda",
      datetime: "19:22",
      message: "Bu harika bir fikir!",
    ),
    ChatModel(
      avatarUrl: "assets/portraits/77.jpg",
      name: "Merve",
      datetime: "14:34",
      message: "Randevu saatiniz güncellenmiştir.",
    ),
    ChatModel(
      avatarUrl: "assets/portraits/81.jpg",
      name: "Ozan",
      datetime: "11:05",
      message: "Sorunsuz bir uçuş dileriz!",
    ),
    ChatModel(
      avatarUrl: "assets/portraits/85.jpg",
      name: "Mehmet",
      datetime: "08:15",
      message: "Hızlı cevabınız için teşekkürler!",
    ),
  ];
}