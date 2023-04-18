import 'package:flutter/material.dart';
import 'package:wtsapp/sec.dart';

void main() {

  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView.separated(
          itemBuilder: (cxt, index) {
          
            return ListTile(
              leading: const CircleAvatar(
                radius: 40,
                backgroundImage: AssetImage("assets/images/1114821.jpg"),
              ),
              title:  Text(
                "ROLLNO $index",
                selectionColor: Colors.black,
                style:const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: const Text("hey are you there"),
              trailing: Text("1$index :00 pm "),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (cxt) {
                  return Sec(name: "STD $index",);
                }));
              },
            );
          },
          separatorBuilder: (cxt, index) {
            return const Divider();
          },
          itemCount: 50),
    ));
  }
}
