import 'package:sippt/models/shop.dart';


Future<void> registerShop(Map<String, dynamic> reg) async {
  try {
    final shop = Shop.fromJson({
      ...reg,
      'status': 'pending'
    });
    print('Successfully registered ${shop.displayName}');
    print(shop);
  }
  catch (e) {
    print('Failed to register shop: ${e}');
  }
} 