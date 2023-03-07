import 'package:flutter/material.dart';

class Eps15 extends StatelessWidget {
  const Eps15({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Eps 3')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Center(
            child: SizedBox(
              width: 250,
              height: 150,
              child: ClipPath(
                clipper: ClipTrapezoid(),
                // child: Container(color: Colors.amber),
                child: Container(
                  width: 250,
                  height: 150,
                ),
                // child: ElevatedButton(
                //   onPressed: () {},
                //   child: const Text('Button'),
                // ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ClipTrapezoid extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double width = size.width;
    double height = size.height;

    Path path = Path();

    path.moveTo(width * 0.2, 0);
    path.lineTo(width * 0.8, 0);
    path.lineTo(width, height);
    path.lineTo(0, height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
