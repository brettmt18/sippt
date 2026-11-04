class Shop {
  final String? id;
  final String status;
  final String displayName;
  final String address;
  final double? funds;
  final int? allocatedPoints;

  const Shop({
    this.id,
    required this.status,
    required this.displayName,
    required this.address,
    this.funds,
    this.allocatedPoints
  });

  factory Shop.fromJson(Map<String, dynamic> json) {
    return Shop(
      id: json['id'] as String?,
      status: json['status'] as String,
      displayName: json['displayName'] as String,
      address: json['address'] as String, 
      funds: ((json['funds']) as num?)?.toDouble(),
      allocatedPoints: ((json['allocatedPoints']) as num?)?.toInt()
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'status': status,
    'displayName': displayName,
    'address': address,
    'funds': funds,
    'allocatedPoints': allocatedPoints
  };

  Shop copyWith({
    String? id,
    String? status,
    String? displayName,
    String? address,
    double? funds,
    int? allocatedPoints
  }) {
    return Shop(
      id: id ?? this.id,
      status: status ?? this.status,
      displayName: displayName ?? this.displayName,
      address: address ?? this.address,
      funds: funds ?? this.funds,
      allocatedPoints: allocatedPoints ?? this.allocatedPoints
    );
  }

  @override
  String toString() {
    return 'Shop(id: $id, status: $status, displayName: "$displayName", address: "$address", funds: $funds, allocatedPoints: $allocatedPoints)';
  }
}