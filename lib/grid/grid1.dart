import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: GridView1(),
  ));
}

class GridView1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        // gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 80),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 30,
          mainAxisSpacing: 10,
        ),
        children: List.generate(
            20,
                (index) => Card(
              child: Center(
                child: Image.network("https://www.istockphoto.com/photo/beautiful-flower-growing-out-of-crack-in-asphalt-space-for-text-hope-concept-gm1488043800-513333157?utm_source=pixabay&utm_medium=affiliate&utm_campaign=SRP_image_sponsored&utm_content=https%3A%2F%2Fpixabay.com%2Fimages%2Fsearch%2Fnature%2F&utm_term=nature"),
              ),
            )),
      ),
    );
  }
}