import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:reviewapp/app.dart';
import 'package:reviewapp/state/provider/auth_provider.dart';
import 'package:reviewapp/state/provider/store_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => AuthProvider(),
      child: MyApp(),
    ),
    ChangeNotifierProvider(
      create: (_) => StoreProvider()..getProduct(),
      child: MyApp(),
    )
  ],
    child: MyApp(),
  )
  );
}
