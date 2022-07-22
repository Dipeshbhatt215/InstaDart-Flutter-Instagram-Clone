import 'package:cloud_firestore/cloud_firestore.dart';

class Story {
  final String id;
  final Timestamp timeEnd;
  final Timestamp timeStart;
  final String authorId;
  final String imageUrl;
  final String caption;
  final Map<dynamic, dynamic> views;
  final String location;
  final String filter;
  final String linkUrl;
  final int duration;

  Story({
    required this.id,
    required this.timeStart,
    required this.timeEnd,
    required this.authorId,
    required this.imageUrl,
    required this.caption,
    required this.views,
    required this.location,
    required this.filter,
    required this.linkUrl,
    required this.duration,
  });

  factory Story.fromDoc(DocumentSnapshot doc) {
    return Story(
      id: doc.id,
      timeStart: doc['timeStart'],
      timeEnd: doc['timeEnd'],
      authorId: doc['authorId'],
      imageUrl: doc['imageUrl'],
      caption: doc['caption'],
      views: doc['views'],
      location: doc['location'],
      filter: doc['filter'],
      linkUrl: doc['linkUrl'] ?? '',
      duration: doc['duration'] ?? 10,
    );
  }
}
