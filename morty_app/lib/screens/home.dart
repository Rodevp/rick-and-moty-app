import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:morty_app/widgets/show_characters.dart';


class Home extends StatelessWidget {
  
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        body: Center(
          child: ShowCharacters(),
        ),
      ),
    );
  }
}
