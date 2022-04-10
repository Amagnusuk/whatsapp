import 'package:whatsapp/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final String text1;
  final String textCall;
  final bool isLiked;
  final bool unread;

  Message(
      {required this.sender,
      required this.time,
      required this.text,
      required this.text1,
      required this.textCall,
      required this.isLiked,
      required this.unread});
}

List<Message> chats = [
  Message(
    sender: james,
    time: '8:15 da noite',
    text: 'Uí, é como?',
    text1: '120',
    textCall: 'Ontem, 12:54 da madrugada',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: olivia,
    time: '7:37 da noite',
    text:
        'Colegas, quais são as novidades de hoje, os professores estiveram presentes?',
    text1: '30',
    textCall: '(2) 15 de Janeiro, 9:31 da noite',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: john,
    time: '6:57 da tarde',
    text: 'Hey, man! Tomorrow is my birthday. Do you know?',
    text1: '15',
    textCall: '5 de Janeiro, 6:334 da tarde',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sophia,
    time: 'Ontem',
    text: 'João convidou-me à sua festa de aniversário. Não irás?',
    text1: '10',
    textCall: '(3) 4 de janeiro, 9:41 da noite',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: steven,
    time: '27/03/22',
    text: 'Good afternoon! Long time no see, man!',
    text1: '5',
    textCall: '24/12/21, 3:34 da tarde',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: sam,
    time: '8:03 da manhã',
    text: 'Hello! Everything´s ok?',
    text1: '2',
    textCall: '1 de abril, 10:02 da noite',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: greg,
    time: '6:38 da manhã',
    text: 'Man, what´s the news?',
    text1: '8',
    textCall: '30 de março, 7:06 da noite',
    isLiked: false,
    unread: true,
  ),
];
