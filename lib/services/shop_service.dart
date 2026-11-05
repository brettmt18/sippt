import 'package:dotenv/dotenv.dart';
import 'package:sippt/models/shop.dart';
import 'package:supabase/supabase.dart';

final DotEnv env = DotEnv()..load();
final String sbUrl = env['SUPABASE_URL'] ?? '';
final String sbKey = env['SUPABASE_PUBLISHABLE_KEY'] ?? '';
final String pgSchema = env['SHOP_SCHEMA'] ?? 'public';
final String shopTable = env['SHOP_TABLE'] ?? '';
 
class ShopService {
  final SupabaseClient supabase = SupabaseClient(
  sbUrl, 
  sbKey, 
  postgrestOptions: PostgrestClientOptions(schema: pgSchema),
);

  Future<void> registerShop(Map<String, dynamic> reg) async {

    try {
      final Shop shop = Shop.fromJson({
        'displayName': reg['displayName'],
        'address': reg['address'],
        'status': 'pending'
      });

      await supabase.from('shops').insert(shop.toJson());

      print('Successfully registered ${shop.displayName}');
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