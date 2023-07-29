import 'package:flutter/material.dart';

class CustomTabBar extends SliverPersistentHeaderDelegate {
  const CustomTabBar();

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return Container(
      color: Colors.black,
      height: 48,
      child: const TabBar(
        tabs: [
          Tab(
            text: 'one',
          ),
          Tab(
            text: 'two',
          ),
        ],
      ),
    );
  }

  @override
  double get maxExtent => 48;

  @override
  double get minExtent => 48;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}
