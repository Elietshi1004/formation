import 'dart:async';

import 'package:flutter/material.dart';

class AnimUI extends StatefulWidget {
  const AnimUI({super.key});

  @override
  State<AnimUI> createState() => _AnimUIState();
}

class _AnimUIState extends State<AnimUI> with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    final _controller = AnimationController(
      duration: Duration(seconds: 5),
      vsync: this,
    );
    _animation = Tween<double>(begin: 0, end: 300).animate(_controller);
    Timer.periodic(Duration(seconds: 5), (timer) {
      if (forward) {
        _controller.reverse();
      } else {
        _controller.forward();
      }
      setState(() {
        forward = !forward;
      });
    });
  }

  bool forward = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation test"),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _animation,
          builder: ((context, child) {
            return Container(
              width: _animation.value,
              height: _animation.value,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.blue),
            );
          }),
          // child:
        ),
      ),
    );
  }
}
