import 'package:flutter/material.dart';

class Karakuni extends StatefulWidget {
  const Karakuni({super.key});

  @override
  State<Karakuni> createState() => _KarakuniState();
}

class _KarakuniState extends State<Karakuni> {
  int likes = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('韓国岳')),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://picsum.photos/300/200',
                  width: 300,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                '韓国岳は、宮崎県と鹿児島県の境に位置する標高1,700メートルの山です。'
                '登山道が整備されており、初心者でも登りやすい山として人気があります。'
                '山頂からは霧島連山や桜島などの絶景を楽しむことができます。',
              ),
              const SizedBox(height: 255),
              Text(
                'いいね $likes',
                style: TextStyle(
                  fontSize: 20,
                  color: likes >= 10 ? Colors.red : Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    likes += 1;
                  });
                },
                child: const Text('いいね'),
              ),
              ElevatedButton(
                onPressed: likes > 0
                    ? () {
                        setState(() {
                          likes -= 1;
                        });
                      }
                    : null,
                child: const Text('取り消し'),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    likes = 0;
                  });
                },
                child: const Text('リセット'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
