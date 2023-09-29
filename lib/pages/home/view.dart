import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/messages/view.dart';
import 'package:sora/pages/setting/view.dart';
import 'package:sora/services/home_tab/service.dart';

class Home extends HookConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabService = ref.watch(homeTabServiceProvider.notifier);
    final tab = ref.watch(homeTabServiceProvider).tab;

    return Scaffold(
      body: _getBody(tab),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: tab,
          onTap: tabService.setTab,
          items: [
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  SvgPicture.asset(
                    'assets/images/slider-icon/Sora-icon-mono.svg',
                  ),
                  const Text('message'),
                ],
              ),
              activeIcon: Column(
                children: [
                  SvgPicture.asset(
                    'assets/images/slider-icon/Sora-icon-color.svg',
                  ),
                  const Text('message'),
                ],
              ),
              label: 'message',
            ),
            BottomNavigationBarItem(
              icon: Column(
                children: [
                  SvgPicture.asset(
                    'assets/images/slider-icon/setting-icon-mono.svg',
                  ),
                  const Text('setting'),
                ],
              ),
              activeIcon: Column(
                children: [
                  SvgPicture.asset(
                    'assets/images/slider-icon/setting-icon-color.svg',
                  ),
                  const Text('setting'),
                ],
              ),
              label: 'setting',
            ),
          ],
        ),
      ),
    );
  }

  Widget _getBody(int index) {
    switch (index) {
      case 0:
        return const MessagesPage();
      case 1:
        return const SettingPage();
      default:
        return const MessagesPage();
    }
  }
}
