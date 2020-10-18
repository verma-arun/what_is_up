class ChatModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatModel({this.name, this.message, this.time, this.avatarUrl});
}

List<ChatModel> dummyData = [
  ChatModel(
      name: "Pawan Kumar",
      message: "Hey Flutter, You are so amazing !",
      time: "15:30",
      avatarUrl: "https://picsum.photos/200"),
  ChatModel(
      name: "Harvey Spectre",
      message: "Hey I have hacked whatsapp!",
      time: "17:30",
      avatarUrl: "https://picsum.photos/200"),
  ChatModel(
      name: "Mike Ross",
      message: "Wassup !",
      time: "5:00",
      avatarUrl: "https://picsum.photos/200"),
  ChatModel(
      name: "Rachel",
      message: "I'm good!",
      time: "10:30",
      avatarUrl: "https://picsum.photos/200"),
  ChatModel(
      name: "Barry Allen",
      message: "I'm the fastest man alive!",
      time: "12:30",
      avatarUrl: "https://picsum.photos/200"),
  ChatModel(
      name: "Joe West",
      message: "Hey Flutter, You are so cool !",
      time: "15:30",
      avatarUrl: "https://picsum.photos/200"),
];
