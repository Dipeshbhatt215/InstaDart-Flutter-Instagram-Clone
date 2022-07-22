import 'package:cloud_firestore/cloud_firestore.dart';

class Message {
  final String id;
  final String senderId;
  final String? text;
  final String? imageUrl;
  final String? giphyUrl;
  final Timestamp timestamp;
  final bool isLiked;

  Message(
      {required this.id,
      required this.senderId,
      required this.text,
      required this.imageUrl,
      required this.timestamp,
      required this.giphyUrl,
      required this.isLiked});

  factory Message.fromDoc(DocumentSnapshot doc) {
    return Message(
      id: doc.id,
      senderId: doc['senderId'],
      text: doc['text'],
      imageUrl: doc['imageUrl'],
      timestamp: doc['timestamp'],
      isLiked: doc['isLiked'],
      giphyUrl: doc['giphyUrl'] ?? "",
    );
  }
}
