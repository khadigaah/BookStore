import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBookImage extends StatefulWidget {
  const CustomBookImage({super.key});

  @override
  State<CustomBookImage> createState() => _CustomBookImageState();
}

class _CustomBookImageState extends State<CustomBookImage> {


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: AspectRatio(
        aspectRatio: 2.6/4,
        child : Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),),
            clipBehavior: Clip.hardEdge,
          child: SvgPicture.asset(
        AssetsInfo.book3,
        fit: BoxFit.fill,),
        ),
      ),
    );
  }
}
