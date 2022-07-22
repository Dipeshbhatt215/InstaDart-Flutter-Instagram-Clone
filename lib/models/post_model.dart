import 'package:cloud_firestore/cloud_firestore.dart';

class Post {
  final String id;
  final String imageUrl;
  final String caption;
  final int likeCount;
  final String authorId;
  final String location;
  final Timestamp timestamp;
  final bool? commentsAllowed;

  Post({
    required this.id,
    required this.imageUrl,
    required this.caption,
    required this.likeCount,
    required this.authorId,
    required this.location,
    required this.timestamp,
    required this.commentsAllowed,
  });

  factory Post.fromDoc(DocumentSnapshot doc) {
    return Post(
      id: doc.id,
      imageUrl: doc['imageUrl'],
      caption: doc['caption'],
      likeCount: doc['likeCount'],
      authorId: doc['authorId'],
      location: doc['location'] ?? "",
      timestamp: doc['timestamp'],
      commentsAllowed: doc['commentsAllowed'] ?? true,
    );
  }
}
