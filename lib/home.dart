import 'package:flutter/material.dart';
import 'package:shared_prefs/cache_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final textController = TextEditingController();

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shared Preference"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: textController,
                onFieldSubmitted: (value) {},
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("type your name"),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    CacheData.setData(
                        key: "userName", value: textController.text);
                  });
                },
                child: const Text("Save userName"),
              ),
              const SizedBox(
                height: 20,
              ),
              OutlinedButton(
                onPressed: () {
                  CacheData.deleteData(key: "userName");
                  debugPrint(CacheData.getData(key: "userName"));
                },
                child: const Text("Delete UserName"),
              ),
              const SizedBox(
                height: 20,
              ),
              OutlinedButton(
                onPressed: () {
                  setState(() {
                    debugPrint(CacheData.getData(key: "userName"));
                  });
                },
                child: const Text("Get UserName"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
