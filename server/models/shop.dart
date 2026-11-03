class Shop {
  final String id;
  final String displayName;
  final String address;
  final double funds;
  final int allocatedPoints;

  const Shop({
    required this.id,
    required this.displayName,
    required this.address,
    required this.funds,
    required this.allocatedPoints 
  });

  factory Shop.fromJson(Map<String, dynamic> json) {
    return Shop(
      id: json['id'] as String,
      displayName: json['displayName'] as String,
      address: json['address'] as String, 
      funds: (json['funds'] as num).toDouble(),
      allocatedPoints: json['allocatedPoints'] as int);
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'displayName': displayName,
    'address': address,
    'funds': funds,
    'allocatedPoints': allocatedPoints
  };

  Shop copyWith({
    String? id,
    String? displayName,
    String? address,
    double? funds,
    int? allocatedPoints
  }) {
    return Shop(
      id: id ?? this.id,
      displayName: displayName ?? this.displayName,
      address: address ?? this.address,
      funds: funds ?? this.funds,
      allocatedPoints: allocatedPoints ?? this.allocatedPoints
    );
  }
}