import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/card_messages/view.dart';
import 'package:sora/pages/channel_manage/view.dart';
import 'package:sora/pages/messages/view.dart';
import 'package:sora/services/home_background_color/service.dart';
import 'package:sora/services/home_tab/service.dart';

class Home extends StatelessWidget {
  const Home({required this.tab, super.key});

  final int tab;

  @override
  Widget build(BuildContext context) => ProviderScope(
        overrides: [
          initialHomeTabProvider.overrideWithValue(tab),
          targetColorRightProvider.overrideWithValue(Colors.orange),
          targetColorLeftProvider.overrideWithValue(Colors.blue),
        ],
        child: const _Home(),
      );
}

class _Home extends HookConsumerWidget {
  const _Home();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tabService = ref.watch(homeTabServiceProvider.notifier);
    final tab = ref.watch(homeTabServiceProvider).tab;

    final backgroundColor =
        ref.watch(homeBackgroundColorServiceProvider).backgroundColor;

    return Scaffold(
      backgroundColor: backgroundColor,
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
              icon: SvgPicture.asset(
                'assets/images/slider-icon/Sora-icon-mono.svg',
              ),
              activeIcon: SvgPicture.asset(
                'assets/images/slider-icon/Sora-icon-color.svg',
              ),
              label: 'message',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/slider-icon/slider-icon-mono.svg',
              ),
              activeIcon: SvgPicture.asset(
                'assets/images/slider-icon/slider-icon-color.svg',
              ),
              label: 'カードメッセージ',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/images/slider-icon/setting-icon-mono.svg',
              ),
              activeIcon: SvgPicture.asset(
                'assets/images/slider-icon/setting-icon-color.svg',
              ),
              label: 'チャンネル管理',
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
        return const CardMessagesPage();
      case 2:
        return const ChannelManagePage();
      case 3:
        return const Center(child: Text('オプションタブの内容'));
      default:
        return const MessagesPage();
    }
  }
}
