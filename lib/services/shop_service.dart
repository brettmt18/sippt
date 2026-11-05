import 'package:dotenv/dotenv.dart';
import 'package:sippt/models/shop.dart';
import 'package:supabase/supabase.dart';

final DotEnv env = DotEnv()..load();
final String sbUrl = env['SUPABASE_URL'] ?? '';
final String sbKey = env['SUPABASE_PUBLISHABLE_KEY'] ?? '';

class ShopService {
  final SupabaseClient supabase = SupabaseClient(sbUrl, sbKey);

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
}

void main() async {
  final service = ShopService();

  await service.registerShop({
    'displayName': 'Boston Boba Shop',
    'address': '123 Newbury St.',
  });

  await service.supabase.dispose();
}