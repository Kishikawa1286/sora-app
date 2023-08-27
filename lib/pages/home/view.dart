import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:sora/pages/card_messages/view.dart';
import 'package:sora/pages/card_messages/view_model.dart';
import 'package:sora/pages/channel_manage/view.dart';
import 'package:sora/pages/home/view_model.dart';
import 'package:sora/pages/messages/view.dart';

class Home extends HookConsumerWidget {
  const Home({
    required this.tab,
    super.key,
  });

  final int tab;

  Color _calculateBackgroundColor(BuildContext context, double offset) {
    const maxOffset = 350.0;
    final normalizedOffset = (offset / maxOffset).clamp(-1.0, 1.0);

    int lerpValue(int start, int end, double fraction) =>
        (start + (end - start) * fraction).toInt();

    final defaultColor = Theme.of(context).colorScheme.background;

    const targetColorRight = Colors.orange; // Target color for right swipe
    const targetColorLeft = Colors.blue; // Target color for left swipe

    if (normalizedOffset > 0) {
      final red =
          lerpValue(defaultColor.red, targetColorRight.red, normalizedOffset);
      final green = lerpValue(
        defaultColor.green,
        targetColorRight.green,
        normalizedOffset,
      );
      final blue =
          lerpValue(defaultColor.blue, targetColorRight.blue, normalizedOffset);
      return Color.fromRGBO(red, green, blue, 1);
    } else if (normalizedOffset < 0) {
      final red =
          lerpValue(defaultColor.red, targetColorLeft.red, -normalizedOffset);
      final green = lerpValue(
        defaultColor.green,
        targetColorLeft.green,
        -normalizedOffset,
      );
      final blue =
          lerpValue(defaultColor.blue, targetColorLeft.blue, -normalizedOffset);
      return Color.fromRGBO(red, green, blue, 1);
    } else {
      return defaultColor;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.watch(homeViewModelProvider(tab).notifier);
    final model = ref.watch(homeViewModelProvider(tab));
    final currentTab = model.currentTab;

    final cardModel = ref.watch(CardMessagesPageViewModelProvider);
    final scaffoldBackgroundColor =
        _calculateBackgroundColor(context, cardModel.swipeOffset);

    return Scaffold(
      backgroundColor: scaffoldBackgroundColor,
      body: _getBody(currentTab),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: currentTab,
          onTap: viewModel.updateCurrentTab,
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
