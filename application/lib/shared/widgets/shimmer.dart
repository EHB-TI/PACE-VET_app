import 'package:flutter/material.dart';

class _SlidingGradientTransform extends GradientTransform {
  const _SlidingGradientTransform({
    required this.slidePercent,
  });

  final double slidePercent;

  @override
  Matrix4? transform(Rect bounds, {TextDirection? textDirection}) {
    return Matrix4.translationValues(bounds.width * slidePercent, 0.0, 0.0);
  }
}

/// A simple widget that shows a shimmering effect.
/// based on https://docs.flutter.dev/cookbook/effects/shimmer-loading
class Shimmer extends StatefulWidget {
  final Widget? child;
  final double? height;
  final double? width;
  final Duration speed;
  final List<Color> colors;
  final List<double> stops;

  const Shimmer({
    super.key,
    this.child,
    this.height,
    this.width,
    this.speed = const Duration(seconds: 1, milliseconds: 500),
    this.colors = const [
      Color(0xFFEBEBF4),
      Color(0xFFF4F4F4),
      Color(0xFFEBEBF4),
    ],
    this.stops = const [
      0.1,
      0.3,
      0.4,
    ],
  });

  @override
  State<Shimmer> createState() => _ShimmerState();
}

class _ShimmerState extends State<Shimmer> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  LinearGradient get gradient => LinearGradient(
        colors: widget.colors,
        stops: widget.stops,
        begin: const Alignment(-1.0, -1.0),
        end: const Alignment(1.0, 1.0),
        tileMode: TileMode.clamp,
        transform: _SlidingGradientTransform(slidePercent: _controller.value),
      );

  @override
  void initState() {
    super.initState();

    _controller = AnimationController.unbounded(vsync: this)
      ..repeat(min: -0.5, max: 1.5, period: widget.speed)
      ..addListener(_updateShimmer);
  }

  @override
  void dispose() {
    _controller.removeListener(_updateShimmer);
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcATop,
      shaderCallback: (bounds) => gradient.createShader(bounds),
      child: widget.child ?? _buildDefault(),
    );
  }

  Widget _buildDefault() {
    return DecoratedBox(
      decoration: const BoxDecoration(color: Colors.grey),
      child: SizedBox(
        width: widget.width ?? 100,
        height: widget.height ?? 100,
      ),
    );
  }

  void _updateShimmer() {
    setState(() {});
  }
}
