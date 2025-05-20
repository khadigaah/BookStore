import 'package:flutter/material.dart';

class CustomActionBar extends StatefulWidget {
  const CustomActionBar({super.key});

  @override
  State<CustomActionBar> createState() => _CustomActionBarState();
}

class _CustomActionBarState extends State<CustomActionBar> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: const EdgeInsets.all(30),
        padding: const EdgeInsets.symmetric(horizontal: 30),
        height: 60,
        decoration: BoxDecoration(
          // ignore: deprecated_member_use
          color: Colors.white.withOpacity(0.3),
          borderRadius: BorderRadius.circular(30),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 40,
              offset: Offset.zero,
              blurStyle: BlurStyle.inner,
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
              children: [
            _iconButton(Icons.menu_book_outlined),
            const SizedBox(width: 15),
            _iconButton(Icons.bookmark),
            const SizedBox(width: 15),
            _iconButton(Icons.library_music),
            const SizedBox(width: 15),
            _circleAvatar(),
          ],
        ),
      ),
    );
  }

  Widget _iconButton(IconData icon) {
    return IconButton(
      icon: Icon(icon),
      color: Color(0xffF7F7F7),
      iconSize: 30,
      onPressed: () {
        setState(() {
          
        });
      },
    );
  }

  Widget _circleAvatar() {
    return const CircleAvatar(
      backgroundColor: Colors.white,
      radius: 20,
      backgroundImage: AssetImage('assets/images/av.jpg'),
    );
  }
}
