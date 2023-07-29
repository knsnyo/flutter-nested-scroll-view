import 'dart:math';

import 'package:flutter/material.dart';

class CustomTabScreen extends StatelessWidget {
  const CustomTabScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final random = Random();
    return CustomScrollView(
      physics: const ClampingScrollPhysics(),
      slivers: [
        SliverOverlapInjector(
          handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 300,
            child: Center(
              child: Text('아래에 있어요'),
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            childCount: 100,
            (context, index) => Container(
              height: 100,
              color: Color.fromARGB(
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
                random.nextInt(256),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
