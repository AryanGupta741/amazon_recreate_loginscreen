import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class waveform extends StatefulWidget {
  const waveform({super.key});

  @override
  State<waveform> createState() => _waveformState();
}

class _waveformState extends State<waveform> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(children: [
        Positioned(
          top: 0,
          child: ClipPath(
            clipper: BottomWaveClipper(),
            child: Container(
              child: Icon(
                FontAwesomeIcons
                    .star, // Replace with your desired FontAwesome icon
                color: Colors.black, // Set the icon color
                size: 32.0, // Set the icon size
              ),
              color: Colors.white,
              width: 1000,
              height: 200,
            ),
          ),
        ),
        Positioned(
          top: 0,
          child: ClipPath(
            clipper: BottomWaveClipper(),
            child: Container(
              child: Icon(
                FontAwesomeIcons
                    .star, // Replace with your desired FontAwesome icon
                color: Colors.black, // Set the icon color
                size: 32.0, // Set the icon size
              ),
              color: Colors.white,
              width: 1000,
              height: 200,
            ),
          ),
        ),
      ]),
    );
  }
}

class BottomWaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, 40.0);
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 40.0);

    for (int i = 0; i < 10; i++) {
      if (i % 2 == 0) {
        path.quadraticBezierTo(
            size.width - (size.width / 16) - (i * size.width / 8),
            0.0,
            size.width - ((i + 1) * size.width / 8),
            size.height - 160);
      } else {
        path.quadraticBezierTo(
            size.width - (size.width / 16) - (i * size.width / 8),
            size.height - 120,
            size.width - ((i + 1) * size.width / 8),
            size.height - 160);
      }
    }
    path.lineTo(0.0, 40.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
