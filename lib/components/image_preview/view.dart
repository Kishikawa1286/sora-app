import 'package:dismissible_page/dismissible_page.dart';
import 'package:flutter/material.dart';

Future<void> pushImagePreviewPage(
  BuildContext context, {
  required Image image,
  double radius = 16,
}) =>
    context.pushTransparentRoute(
      _ImagePreviewPage(
        image: image,
        radius: radius,
      ),
    );

class _ImagePreviewPage extends StatelessWidget {
  const _ImagePreviewPage({required this.image, this.radius = 12});

  final Image image;
  final double radius;

  @override
  Widget build(BuildContext context) => DismissiblePage(
        onDismissed: Navigator.of(context).pop,
        direction: DismissiblePageDismissDirection.multi,
        isFullScreen: false,
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: image,
        ),
      );
}
