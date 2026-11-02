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
}