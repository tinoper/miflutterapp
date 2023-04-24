import 'package:flutter/material.dart';

import '../../../ui_params/miflutterapp_sizes.dart';

class PhotoProfile extends StatelessWidget {
  const PhotoProfile({
    super.key,
    required this.size,
    required this.photo,
  });

  final Size size;
  final String photo;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      width: size.width,
      top: (size.height / 5),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          CircleAvatar(
            radius: MiFlutterAppSizes.avatarProfilePage,
            backgroundImage: NetworkImage(photo),
          ),
        ],
      ),
    );
  }
}
