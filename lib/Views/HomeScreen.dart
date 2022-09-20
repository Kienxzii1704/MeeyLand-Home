import 'package:flutter/material.dart';
import 'package:meeyland_home/Views/HomeScreen/Body.dart';
import 'package:meeyland_home/Views/HomeScreen/Header.dart';
import 'package:meeyland_home/Views/HomeScreen/Banner.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffF6F8FB),
      child: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: const [
              Header(),
              Banner1(),
              Body(),
            ],
          ),
        ),
      ),
    );
  }
}
