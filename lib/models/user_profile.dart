class UserProfile {
  final String id; // uuid
  final String username;
  final int pointsCurrent;
  final int pointsAllTime;
  final DateTime userSince;

  const UserProfile({
    required this.id,
    required this.username,
    required this.pointsCurrent,
    required this.pointsAllTime,
    required this.userSince
  });

  factory UserProfile.fromJson(Map<String, dynamic> data) {
    return UserProfile(
      id: data['id'] as String, 
      username: data['username'] as String,
      pointsCurrent: data['points_current'] as int, 
      pointsAllTime: data['points_all_time'] as int, 
      userSince: DateTime.parse(data['created_at'] as String)
    );
  } 
}