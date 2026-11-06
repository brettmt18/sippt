class User {
  final String id; // uuid
  final String username;
  final int pointsCurrent;
  final int pointsAllTime;

  const User( {
    required this.id,
    required this.username,
    this.pointsCurrent = 0,
    this.pointsAllTime = 0
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'] as String,
      username: json['username'] as String,
      pointsCurrent: (json['pointsCurrent'] as num).toInt(),
      pointsAllTime: (json['pointsAllTime'] as num).toInt(),
    );
  }

  Map<String, dynamic> toJson() => {
    'id': this.id,
    'username': this.username,
    'pointsCurrent': this.pointsCurrent,
    'pointsAllTime': this.pointsAllTime
  };
}