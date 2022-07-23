import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  final String id;
  final String name;
  final String profileImageUrl;
  final String email;
  final String bio;
  final String token;
  final bool? isBanned;
  // final List<String> favoritePosts;
  // final List<String> blockedUsers;
  // final List<String> hideStoryFromUsers;
  // final List<String> closeFriends;
  // final bool allowStoryMessageReplies;
  final String role;
  final bool ?isVerified;
  final String? website;
  final Timestamp? timeCreated;

  User({
    required this.id,
    required this.name,
    required this.profileImageUrl,
    required this.email,
   required this.bio,
  required  this.token,
    this.isBanned,
  required  this.isVerified,
   this.website,
  required  this.role,
   required this.timeCreated,
  });

  factory User.fromDoc(DocumentSnapshot doc) {
    return User(
      id: doc.id,
      name: doc['name'],
      profileImageUrl: doc['profileImageUrl'],
      email: doc['email'],
      bio: doc['bio'] ?? '',
      token: doc['token'] ?? '',
      isVerified: doc['isVerified'] ?? false,
      isBanned: doc['isBanned'],
      website: doc['website'] ?? '',
      role: doc['role'] ?? 'user',
      timeCreated: doc['timeCreated'],
    );
  }
}
