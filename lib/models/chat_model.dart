import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:instagram/models/models.dart';

class Chat {
  final String id;
  final String recentMessage;
  final String recentSender;
  final Timestamp recentTimestamp;
  final List<dynamic> memberIds;
  final List<User> memberInfo;
  final dynamic readStatus;

  Chat({
    required this.id,
    required this.recentMessage,
    required this.recentSender,
    required this.recentTimestamp,
    required this.memberIds,
    required this.memberInfo,
    required this.readStatus,
  });

  factory Chat.fromDoc(DocumentSnapshot doc) {
    return Chat(
      id: doc.id,
      recentMessage: doc['recentMessage'],
      recentSender: doc['recentSender'],
      recentTimestamp: doc['recentTimestamp'],
      memberIds: doc['memberIds'],
      readStatus: doc['readStatus'], memberInfo: [],
    );
  }
}
