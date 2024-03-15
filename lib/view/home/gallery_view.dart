import 'package:flutter/material.dart';

class galleryView extends StatefulWidget {
  const galleryView({Key? key}) : super(key: key);

  @override
  State<galleryView> createState() => _galleryViewState();
}

class _galleryViewState extends State<galleryView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "no maaaa",
          style: TextStyle(color: Colors.white), // Set text color to white
        ),
        backgroundColor: Colors.blue,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add, color: Colors.white,),
      ),
      // backgroundColor: Colors.amber,
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: galleryView(),
  ));
}
