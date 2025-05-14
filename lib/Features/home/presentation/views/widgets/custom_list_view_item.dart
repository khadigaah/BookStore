import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomListViewItem extends StatefulWidget {
  const CustomListViewItem({super.key});

  @override
  State<CustomListViewItem> createState() => _CustomListViewItemState();
}

class _CustomListViewItemState extends State<CustomListViewItem> {


  @override
  Widget build(BuildContext context) {
    return SizedBox(
    height: MediaQuery.of(context).size.height*0.3,
      child: AspectRatio(
        aspectRatio: 2.7/4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),),
            clipBehavior: Clip.hardEdge,
          child: SvgPicture.asset(
        AssetsInfo.book1,
        fit: BoxFit.fill,),
        ),
      ),
    );
  }
}
