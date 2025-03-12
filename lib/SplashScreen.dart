import 'package:flutter/material.dart';
import 'package:drawing_animation/drawing_animation.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sutradharmobileapp/Constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  bool _drawCompleted = false;
  bool run = true;

  late AnimationController _controller;
  late Animation<double> _fillAnimation;

  @override
  void initState() {
    super.initState();

    /// ✅ Fill Animation Controller
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );

    /// ✅ Left-to-Right Fill Animation
    _fillAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
              /// ✅ Step 1: Animate Line Drawing

              AnimatedDrawing.svg(
                image.logoSvg,
                run: run,
                duration: Duration(seconds: 3),
                onFinish: () {
                  setState(() {
                    run = false;
                    _drawCompleted = true;
                  });

                  /// ✅ Start Left-To-Right Fill Animation
                  _controller.forward();
                },
                animationCurve: Curves.easeInOut,
              ),

              /// ✅ Step 2: Left-To-Right Color Fill Animation
              if (_drawCompleted)
                AnimatedBuilder(
                  animation: _fillAnimation,
                  builder: (context, child) {
                    return ClipRect(
                      clipper: LeftToRightClipper(_fillAnimation.value),
                      child: SvgPicture.asset(
                        image.logoSvg,
                        width: MediaQuery.of(context).size.width * 1.3,
                      ),
                    );
                  },
                ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

/// ✅ Custom Clipper For Left-To-Right Animation
class LeftToRightClipper extends CustomClipper<Rect> {
  final double progress;

  LeftToRightClipper(this.progress);

  @override
  // Rect getClip(Size size) {
  //   return Rect.fromLTRB(0, 0, size.width * progress, size.height);
  // }

  Rect getClip(Size size) {
    return Rect.fromLTRB(
      0,
      size.height * (1 - progress), // ✅ Fill from bottom to top
      size.width,
      size.height,
    );
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => true;
}
