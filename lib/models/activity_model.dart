import 'package:cloud_firestore/cloud_firestore.dart';

class Activity {
  final String id;
  final String fromUserId;
  final String postId;
  final String postImageUrl;
  final String comment;
  final bool isFollowEvent;
  final bool isLikeEvent;
  final bool isMessageEvent;
  final bool isCommentEvent;
  final bool isLikeMessageEvent;

  final String recieverToken;
  final Timestamp timestamp;

  Activity({
    required this.id,
    required this.fromUserId,
    required this.postId,
    required this.postImageUrl,
    required this.comment,
    required this.timestamp,
    required this.isFollowEvent,
    required this.isLikeEvent,
    required this.isMessageEvent,
    required this.isCommentEvent,
    required this.isLikeMessageEvent,
    required this.recieverToken,
  });

  factory Activity.fromDoc(DocumentSnapshot doc) {
    return Activity(
      id: doc.documentID,
      fromUserId: doc['fromUserId'],
      postId: doc['postId'],
      postImageUrl: doc['postImageUrl'],
      comment: doc['comment'],
      timestamp: doc['timestamp'],
      isFollowEvent: doc['isFollowEvent'] ?? false,
      isCommentEvent: doc['isCommentEvent'] ?? false,
      isLikeEvent: doc['isLikeEvent'] ?? false,
      isMessageEvent: doc['isMessageEvent'] ?? false,
      isLikeMessageEvent: doc['isMessageEvent'] ?? false,
      recieverToken: doc['receiverToken'] ?? '',
    );
  }
}
