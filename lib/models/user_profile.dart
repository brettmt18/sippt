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
}