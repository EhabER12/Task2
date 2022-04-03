import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task 2'),
      ),
      body: Center(
        child: Container(
          width: 400,
          height: 450,
          child: Card(
            child: Column(
              children: [
                const ListTile(
                  leading: Icon(Icons.account_balance_sharp),
                  title: Text('Ehab Rashed'),
                  trailing: Icon(Icons.arrow_back),
                ),
                const SizedBox(height: 20),
                const Text('Success is a journey not a destination'),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image(
                      image: NetworkImage(
                          'https://content.thriveglobal.com/wp-content/uploads/2019/02/success-journey.jpg')),
                ),
                const SizedBox(height: 10),
                Container(
                  decoration:
                      const BoxDecoration(border: Border(bottom: BorderSide())),
                ),
                const SizedBox(height: 10),
                Flex(
                  direction: Axis.horizontal,
                  children: const [
                    Icon(Icons.library_books),
                    Text('like'),
                    SizedBox(width: 100),
                    Icon(Icons.add_box_sharp),
                    Text('Comment'),
                    SizedBox(width: 80),
                    Icon(Icons.add_a_photo_outlined),
                    Text('Share'),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
