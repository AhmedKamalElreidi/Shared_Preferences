import 'package:flutter/material.dart';
import 'package:shared_prefs/cache_data.dart';
import 'package:shared_prefs/home.dart';

Future<void> main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); //بتخلى التطبيق ميرنش اللى لما ينفذ الحاجة دى
  // ignore: await_only_futures
  await CacheData.cacheInitialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
