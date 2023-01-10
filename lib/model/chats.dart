class Chat {
  final String name, lastMessage, time, image;
  final bool isActive;
  Chat({
    this.name = "",
    this.lastMessage = "",
    this.time = "",
    this.image = "",
    this.isActive = false,
  });
}
List listOfChats = [
  Chat(
    name:"Eslam Medhat",
    lastMessage: "Hello Guys, how are you",
    time: "3m ago",
    image: "assets/user.png",
    isActive: true
  ),
  Chat(
      name: "Mohab Mamdouh",
      lastMessage: "Please send me the task ",
      time: "5m ago",
      image: "assets/user_2.png",
      isActive: false),
  Chat(
      name: "Karem mohamed",
      lastMessage: "Please send me the github url ",
      time: "1m ago",
      image: "assets/user_3.png",
      isActive: true),
  Chat(
      name: "Ahmed Saad",
      lastMessage: "I am not coming the next session",
      time: "1d ago",
      image: "assets/user_4.png",
      isActive: false),
  Chat(
      name: "Ahmed Esam",
      lastMessage: "Thank you..",
      time: "9m ago",
      image: "assets/user.png",
      isActive: false),
  Chat(
      name: "Sayed Hashem",
      lastMessage: "Please can you send me your cv",
      time: "8m ago",
      image: "assets/user_2.png",
      isActive: true),
  Chat(
      name: "Jana Hesham",
      lastMessage: "I cant find the record session",
      time: "20m ago",
      image: "assets/user_5.png",
      isActive: false),
  Chat(
      name: "Ahmed Mohamed",
      lastMessage: "Hello Eslam ",
      time: "3m ago",
      image: "assets/user.png",
      isActive: true),
  Chat(
      name: "Ahmed Mohamed",
      lastMessage: "Hello Eslam ",
      time: "3m ago",
      image: "assets/user.png",
      isActive: true),
  Chat(
      name: "Ahmed Mohamed",
      lastMessage: "Hello Eslam ",
      time: "3m ago",
      image: "assets/user.png",
      isActive: true),
];

