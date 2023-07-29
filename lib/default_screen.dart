import 'package:flutter/material.dart';
import 'package:nested_scroll_view_test/custom_tab_bar.dart';
import 'package:nested_scroll_view_test/custom_tab_screen.dart';

class DefaultScreen extends StatelessWidget {
  const DefaultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Nested Layout Test'),
      ),
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScrolled) => [
              const SliverToBoxAdapter(
                child: SizedBox(
                  height: 1000,
                  child: Center(
                    child: Text('위에 있어요'),
                  ),
                ),
              ),
              SliverOverlapAbsorber(
                handle:
                    NestedScrollView.sliverOverlapAbsorberHandleFor(context),
                sliver: const SliverPersistentHeader(
                  pinned: true,
                  delegate: CustomTabBar(),
                ),
              ),
            ],
            body: const TabBarView(
              children: [
                CustomTabScreen(),
                CustomTabScreen(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
