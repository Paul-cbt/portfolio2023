import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ZoomableImage extends StatefulWidget {
  final BorderRadius borderRadius;
  final String path;
  final double? height;
  final double? width;
  final BoxFit? fit;
  final bool? zoomable;
  final bool showShimmerLoading;
  const ZoomableImage(
      {required this.borderRadius,
      required this.path,
      this.showShimmerLoading = false,
      this.fit,
      this.zoomable,
      this.height,
      this.width,
      super.key});

  @override
  _ZoomableImageState createState() => _ZoomableImageState();
}

class _ZoomableImageState extends State<ZoomableImage> {
  late String oldPath;
  @override
  void initState() {
    oldPath = widget.path;
    super.initState();
  }

  @override
  void setState(fn) {
    if (mounted) {
      super.setState(fn);
    }
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return InkWell(
        radius: 100,
        borderRadius: widget.borderRadius,
        onTap: widget.zoomable ?? true
            ? () {
                Navigator.of(context).push(PageRouteBuilder(
                    opaque: false,
                    barrierDismissible: true,
                    pageBuilder: (BuildContext context, _, __) {
                      return SafeArea(
                        child: Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(15),
                          child: InteractiveViewer(
                            constrained: true,
                            child: Hero(
                              transitionOnUserGestures: false,
                              tag: widget.path,
                              child: Material(
                                color: Colors.transparent,
                                child: ClipRRect(
                                  borderRadius: widget.borderRadius,
                                  child: kIsWeb
                                      ? Image.network(
                                          'assets/${widget.path}',
                                          loadingBuilder: (context, child,
                                              loadingProgress) {
                                            return AnimatedSwitcher(
                                              duration: const Duration(
                                                  milliseconds: 400),
                                              child: loadingProgress
                                                          ?.cumulativeBytesLoaded ==
                                                      loadingProgress
                                                          ?.expectedTotalBytes
                                                  ? child
                                                  : ClipRRect(
                                                      borderRadius:
                                                          widget.borderRadius,
                                                      child: Shimmer.fromColors(
                                                        period: const Duration(
                                                            milliseconds: 700),
                                                        baseColor:
                                                            Colors.grey[300] ??
                                                                Colors.grey,
                                                        highlightColor:
                                                            Colors.grey[100] ??
                                                                Colors.grey,
                                                        child: Container(
                                                          color: Colors.grey,
                                                        ),
                                                      ),
                                                    ),
                                            );
                                          },
                                        )
                                      : Image.asset("assets/${widget.path}"),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    }));
              }
            : () {},
        child: Hero(
          transitionOnUserGestures: false,
          tag: widget.path,
          child: Material(
            color: Colors.transparent,
            child: ClipRRect(
                borderRadius: widget.borderRadius,
                child: Image.network(
                  'assets/${widget.path}',
                  height: widget.height ?? constraints.maxHeight,
                  width: widget.width ?? constraints.maxWidth,
                  fit: widget.fit ?? BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    return AnimatedSwitcher(
                      duration: const Duration(milliseconds: 400),
                      child: loadingProgress?.cumulativeBytesLoaded ==
                              loadingProgress?.expectedTotalBytes
                          ? child
                          : ClipRRect(
                              borderRadius: widget.borderRadius,
                              child: Shimmer.fromColors(
                                period: const Duration(milliseconds: 700),
                                baseColor: Colors.grey[300] ?? Colors.grey,
                                highlightColor: Colors.grey[100] ?? Colors.grey,
                                child: Container(
                                  height: widget.height,
                                  width: widget.width,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                    );
                  },
                )),
          ),
        ),
      );
    });
  }
}
