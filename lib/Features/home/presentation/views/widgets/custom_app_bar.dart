import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CutomAppBar extends StatelessWidget {
  const CutomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 30),
      child: Row(
        children: [
          SvgPicture.asset(AssetsInfo.logo,),
          const Spacer(),
          IconButton(onPressed: (){}, icon: const Icon(
            FontAwesomeIcons.magnifyingGlass,
            size: 20,
          ),)
        ],
      ),
    );
  }
}