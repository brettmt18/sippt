import 'package:dotenv/dotenv.dart';
import 'package:supabase/supabase.dart';

final DotEnv env = DotEnv()..load();
final String sbUrl = env['SUPABASE_URL'] ?? '';
final String sbKey = env['SUPABASE_PUBLISHABLE_KEY'] ?? '';

Future<void> main() async {
  final supabase = SupabaseClient(
    sbUrl,
    sbKey,
    authOptions: const AuthClientOptions(
      authFlowType: AuthFlowType.implicit,
    ),
  );

  try {
    final res = await supabase.auth.signUp(
      email: '',
      password: '',
      data: {
        'username': ''
      },
    );
    print('Created user: ${res.user?.id}');
  }
  catch (e) {
    print('Signup failed: $e');
  }
  finally {
    await supabase.dispose();
  }
}