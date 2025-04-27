import 'package:flutter/material.dart';

class Barbershop extends StatelessWidget {
  const Barbershop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          _buildBackground(),
          _buildScissorsIcon(),
          _buildTextContent(),
        ],
      ),
    );
  }
}

Widget _buildBackground() {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('assets/hair.jpg'),
        fit: BoxFit.cover,
        colorFilter: ColorFilter.mode(
          Colors.black.withOpacity(0.5),
          BlendMode.darken,
        ),
      ),
    ),
  );
}

Widget _buildScissorsIcon() {
  return Positioned(
    right: 0,
    bottom: 0,
    child: Container(
      width: 110,
      height: 120,
      decoration: BoxDecoration(
        color: Colors.amber,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(40)),
      ),
      child: Center(
        child: Icon(Icons.content_cut, size: 40, color: Colors.black),
      ),
    ),
  );
}

Widget _buildTextContent() {
  return Positioned(
    bottom: 180,
    // left: 0,
    // right: 0,
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          'LOCATE THE NEAREST',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
          ),
        ),
        SizedBox(height: 16),
        Text(
          'BARBERSHOP',
          style: TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
          ),
        ),
      ],
    ),
  );
}
