import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String imageUrl = ""; 
  bool showImage = false; 

  void _loadImage() {
    
    setState(() {
      imageUrl = "https://avatars.githubusercontent.com/u/122751852?s=48&v=4";
      showImage = true;
    });
  }

  void _reset() {
    
    setState(() {
      imageUrl = "";
      showImage = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Imagens + StatefulWidget"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(
                  color: Colors.black,
                  style: BorderStyle.solid,
                  width: 2.0,
                ),
              ),
              child: showImage
                  ? Image.network(imageUrl)
                  : const Center(
                      child: Text("Sem imagem"),
                    ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: showImage ? _reset : _loadImage,
              child: Text(showImage ? "Resetar Imagem" : "Carregar Imagem"),
            ),
          ],
        ),
      ),
    );
  }
}
