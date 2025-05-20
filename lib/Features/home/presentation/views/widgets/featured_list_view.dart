import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:async';
import 'dart:math';

class FeaturedBookListView extends StatefulWidget {
  const FeaturedBookListView({super.key});

  @override
  State<FeaturedBookListView> createState() => _FeaturedBookListViewState();
}

class _FeaturedBookListViewState extends State<FeaturedBookListView> {
  final ScrollController _scrollController = ScrollController();
  final List<String> images = [
    'assets/images/Book3.svg',
    'assets/images/Book3.svg',
    'assets/images/Book3.svg',
    'assets/images/Book3.svg',
    'assets/images/Book3.svg',
    'assets/images/Book3.svg',
  ];

  double currentScroll = 0.0;
  int currentIndex = 0;
  late Timer autoScrollTimer;

  final double cardWidth = 140.0;
  final double spacing = 8.0;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      setState(() {
        currentScroll = _scrollController.offset;
      });
    });

    autoScrollTimer = Timer.periodic(const Duration(seconds: 3), (_) {
      if (currentIndex < images.length - 1) {
        currentIndex++;
      } else {
        currentIndex = 0;
      }

      final targetOffset = currentIndex * (cardWidth + spacing);

      _scrollController.animateTo(
        targetOffset,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    });
  }

  @override
  void dispose() {
    autoScrollTimer.cancel();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 260,
      child: ListView.builder(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (context, index) {
          final itemOffset = index * (cardWidth + spacing);
          final centerOffset = currentScroll + screenWidth / 2 - cardWidth / 2;
          final distanceToCenter = (itemOffset - centerOffset).abs();
          final double scale = max(0.9, 1 - distanceToCenter / 300);

          return Padding(
            padding: EdgeInsets.only(
              left: index == 0 ? 0 : spacing / 1,
              right: index == images.length - 1 ? 0 : spacing / 1,
            ),
            child: Transform.scale(
              scale: scale,
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Stack(
                  children: [
                    SvgPicture.asset(
                      images[index],
                      width: cardWidth,
                      height: 240,
                      fit: BoxFit.cover,
                    ),
                    const Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: CircleAvatar(
                          backgroundColor: Colors.white38,
                          radius: 25,
                          child: Icon(Icons.play_arrow, color: Colors.white,
                          size: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
