import 'package:cached_network_image/cached_network_image.dart' as cached;
import 'package:flutter/material.dart';
import 'package:pace_vet/shared/widgets/shimmer.dart';

/// Wrapper around [CachedNetworkImage] with sensible defaults.
class CachedNetworkImage extends StatelessWidget {
  final String imageUrl;
  final BoxFit? fit;
  final double? width;
  final double? height;

  const CachedNetworkImage({
    super.key,
    required this.imageUrl,
    this.fit,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return cached.CachedNetworkImage(
      fit: fit,
      width: width,
      height: height,
      imageUrl: imageUrl,
      placeholder: (context, url) => const Shimmer(
        width: double.infinity,
        height: double.infinity,
      ),
    );
  }
}
