import 'package:cloud_firestore/cloud_firestore.dart';

class Comment {
  final String id;
  final String content;
  final String authorId;
  final Timestamp timestamp;

  Comment({
    required this.id,
    required this.content,
    required this.authorId,
    required this.timestamp,
  });

  factory Comment.fromDoc(DocumentSnapshot doc) {
    return Comment(
      id: doc.id,
      content: doc['content'],
      authorId: doc['authorId'],
      timestamp: doc['timestamp'],
    );
  }
}
