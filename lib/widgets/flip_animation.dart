import 'package:flutter/material.dart';
import 'dart:math' as math;

class FlipAnimation extends StatefulWidget {
  final Widget widget;
	const FlipAnimation({super.key, required this.widget});

	@override
	createState() => _FlipAnimationState();
}

class _FlipAnimationState extends State<FlipAnimation> with SingleTickerProviderStateMixin {
	late AnimationController _controller;
	late Animation<double> _animation;
	bool _isFront = true;
	final String _gfgLogo = 
	"https://media.geeksforgeeks.org/wp-content/uploads/20221210020032/gfglogo2-200.png";

	@override
	void initState() {
		super.initState();
		_controller = AnimationController(
			vsync: this,
			duration: const Duration(milliseconds: 500),
		);

		_animation = Tween<double>(begin: 0, end: 1).animate(_controller)
		..addListener(() {
			setState(() {});
		});
    WidgetsBinding.instance.addPostFrameCallback((_){
        _flipCard();
    });
	}

	@override
	void dispose() {
		_controller.dispose();
		super.dispose();
	}

	void _flipCard() {
		if (_controller.status != AnimationStatus.forward) {
			if (_isFront) {
				_controller.forward();
			} else {
				_controller.reverse();
			}
			_isFront = !_isFront;
      Future.delayed(const Duration(seconds: 3),(){
        _flipCard();
      });
		}
	}

	@override
	Widget build(BuildContext context) {
		return Transform(
			transform: Matrix4.rotationY(_animation.value * math.pi),
			alignment: Alignment.center,
			child: _buildFront() //_isFront ? _buildFront() : _buildBack(),
		);
	}

	Widget _buildFront() {
		return ClipRRect(
			borderRadius: BorderRadius.circular(8.0),
			child: widget.widget,
		);
	}

	// Widget _buildBack() {
	// 	return Transform(
	// 		alignment: Alignment.center,
	// 		transform: Matrix4.rotationY(3.14),
	// 		child: Container(
	// 			decoration: BoxDecoration(
	// 				color: Colors.green[700],
	// 				borderRadius: BorderRadius.circular(10),
	// 			),
	// 			child: const Center(
	// 				child: Text(
	// 					'GeeksforGeeks',
	// 					style: TextStyle(color: Colors.white, fontSize: 24),
	// 				),
	// 			),
	// 		),
	// 	);
	// }
}
